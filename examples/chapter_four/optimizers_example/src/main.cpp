#include <iostream>
#include <random>
#include <limits>

#include <mgl2/mgl.h>
#include "csv.h"

#include "cost_functions.hpp"
#include "performance_measurement.hpp"
#include "backpropagation.hpp"

std::random_device rd;
std::mt19937 prn(rd());

ann::MultilayerPerceptron initializeNetwork(double initializationRange)
{
    ann::MultilayerPerceptron result;
    Matrix w1 = initializationRange * Matrix::Random(5, 4);
    ann::Layer layer1(std::unique_ptr<ann::ActivationFunction>(new ann::LogisticActivationFunction()), w1, Vector::Zero(5));
    result.add(layer1);

    Matrix w2 = initializationRange * Matrix::Random(4, 5);
    ann::Layer layer2(std::unique_ptr<ann::ActivationFunction>(new ann::LogisticActivationFunction()), w2, Vector::Zero(4));
    result.add(layer2);

    Matrix wOut = initializationRange * Matrix::Random(3, 4);
    ann::Layer outputLayer(std::unique_ptr<ann::ActivationFunction>(new ann::LogisticActivationFunction()), wOut, Vector::Zero(3));
    result.add(outputLayer);
    return result;
}


ann::Dataset loadIrisDataset(const std::string &filepath)
{
    Matrix X = Matrix::Zero(4, 150);
    Matrix T = Matrix::Zero(3, 150);
    io::CSVReader<5> csvReader(filepath);
    csvReader.set_header("sepal_length", "sepal_width", "petal_length", "petal_width", "species");
    double sepal_length, sepal_width, petal_length, petal_width;
    std::string species;
    int colIndex = 0;
    while (csvReader.read_row(sepal_length, sepal_width, petal_length, petal_width, species)){
        X.col(colIndex) << sepal_length, sepal_width, petal_length, petal_width;
        if (species == "Iris-setosa") T(0, colIndex) = 1.0;
        else if (species == "Iris-versicolor") T(1, colIndex) = 1.0;
        else if (species == "Iris-virginica") T(2, colIndex) = 1.0;
        else throw "unknow species";
        colIndex++;
    }
    ann::Dataset result;
    result.X = X;
    result.T = T;
    return result;
}

void drawMSE(Matrix &mseData)
{
    mglData model1, model2, model3, model4, model5;
    model1.Create(mseData.cols(), 1);
    model2.Create(mseData.cols(), 1);
    model3.Create(mseData.cols(), 1);
    model4.Create(mseData.cols(), 1);
    model5.Create(mseData.cols(), 1);

    double maxMSE = mseData.maxCoeff();

    for (unsigned i = 0; i < mseData.cols(); i++)
    {
        model1.a[i] = mseData(0, i);
        model2.a[i] = mseData(1, i);
        model3.a[i] = mseData(2, i);
        model4.a[i] = mseData(3, i);
        model5.a[i] = mseData(4, i);
    }

    mglGraph gr;

    gr.SetSize(1000, 480);
    gr.Title("Training MSE on Iris Dataset");

    gr.SubPlot(2, 1, 0);
    gr.SetRanges(0, mseData.cols(), 0, 1.4*maxMSE);	
    gr.Label('x', "epoch x 100", 0);
    gr.Axis();	
    gr.Plot(model1, "|b");
    gr.Plot(model2, "q");
    gr.Plot(model3, "+r");
    gr.Plot(model4, "jQ");
    gr.Plot(model5, ";m");
    gr.AddLegend("No optimization", "|b");
    gr.AddLegend("Momentum", "q");
    gr.AddLegend("Adagrad", "+r");
    gr.AddLegend("RMSprop", "jQ");
    gr.AddLegend("Adam", ";m");
    gr.Legend(1, 1.1);

    gr.SubPlot(2, 1, 1);
    gr.SetRanges(0, mseData.cols(), 0, 0.15*maxMSE);	
    gr.Label('x', "epoch x 100", 0);
    gr.Axis();	
    gr.Plot(model4, "jQ");
    gr.Plot(model5, ";m");
    gr.ClearLegend();
    gr.AddLegend("RMSprop", "jQ");
    gr.AddLegend("Adam", ";m");
    gr.Legend(0.85, 0.65);

    gr.WriteFrame("optimizers.svg");

}

int main(int argc, char **argv)
{
    int epochs = 10000;
    double learningRate = 0.01;
    if (argc > 1)
    {
        int epochsParam = std::atoi(argv[1]);
        if (epochsParam > 0)
            epochs = epochsParam;
    }
    if (argc > 2)
    {
        double learningRateParam = std::stod(argv[2]);
        if (learningRateParam > 0)
            learningRate = learningRateParam;
    }

    auto fullData = loadIrisDataset("../data/iris.csv");
    ann::shuffleDataset(fullData, prn);

    std::cout << "Training model 1 - no optmization\n";
    auto data1 = fullData;
    auto model1 = initializeNetwork(0.5);
    ann::Backpropagation<ann::QuadraticCostFunction> bp1(model1, data1, learningRate, epochs);
    auto mseData1 = bp1.train();

    std::cout << "Training model 2 - with Momentum\n";
    auto data2 = fullData;
    auto model2 = initializeNetwork(0.5);
    ann::Backpropagation<ann::QuadraticCostFunction> bp2(model2, data2, learningRate, epochs);
    bp2.hookOptimizer(
        [V = std::vector<Matrix>(model2.getLayers().size())](double learningRate, const Matrix & dX, int layerIndex, int) mutable {
            Matrix & v = V[layerIndex];
            double beta = 0.3;
            if(v.size() == 0)
            {
                v = -learningRate * dX;
            } else 
            {
                v = beta * v - learningRate * dX;
            }
            return v;
        }
    );
    auto mseData2 = bp2.train();

    std::cout << "Training model 3 - using Adagrad\n";
    auto data3 = fullData;
    auto model3 = initializeNetwork(0.5);
    ann::Backpropagation<ann::QuadraticCostFunction> bp3(model3, data3, learningRate, epochs);
    bp3.hookOptimizer(
        [A = std::vector<Matrix>(model3.getLayers().size())](double learningRate, const Matrix & dX, int layerIndex, int) mutable {
            Matrix & a = A[layerIndex];
            if(a.size() == 0)
            {
                a = dX.array().pow(2.0);
            } else 
            {
                Matrix power = dX.array().pow(2.0);
                a = a + power;
            }
            Matrix v = a.binaryExpr(dX, [&learningRate](double _a, double _dX){
                return -learningRate * _dX / sqrt(_a + 1e-8);
            });
            return v;
        }
    );
    auto mseData3 = bp3.train();

    std::cout << "Training model 4 - using RMSProp\n";
    auto data4 = fullData;
    auto model4 = initializeNetwork(0.5);
    ann::Backpropagation<ann::QuadraticCostFunction> bp4(model4, data4, learningRate, epochs);
    bp4.hookOptimizer(
        [A = std::vector<Matrix>(model4.getLayers().size())](double learningRate, const Matrix & dX, int layerIndex, int) mutable {
            Matrix & a = A[layerIndex];
            double ro = 0.9;
            if(a.size() == 0)
            {
                a = (1.0 - ro) * dX.array().pow(2.0);
            } else 
            {
                Matrix power = (1.0 - ro) * dX.array().pow(2.0);
                a = ro * a + power;
            }
            Matrix v = a.binaryExpr(dX, [&learningRate](double _a, double _dX){
                return -learningRate * _dX / sqrt(_a + 1e-8);
            });
            return v;
        }
    );
    auto mseData4 = bp4.train();

    std::cout << "Training model 5 - using Adam\n";
    auto data5 = fullData;
    auto model5 = initializeNetwork(0.5);
    ann::Backpropagation<ann::QuadraticCostFunction> bp5(model5, data5, learningRate, epochs);
    bp5.hookOptimizer(
        [A = std::vector<Matrix>(model5.getLayers().size()), V = std::vector<Matrix>(model5.getLayers().size())]
            (double learningRate, const Matrix & dX, int layerIndex, int epoch) mutable {
            Matrix & a = A[layerIndex], &v = V[layerIndex];
            double ro = 0.9, beta = 0.7;
            if(a.size() == 0 || v.size() == 0) {
                a = (1.0 - ro) * dX.array().pow(2.0);
                v = (1.0 - beta) * dX;
            } else {
                Matrix power = (1.0 - ro) * dX.array().pow(2.0);
                a = ro * a + power;
                v = beta * v + (1.0 - beta) * dX;
            }
            double alpha = learningRate;
            if(epoch < 100) 
                alpha = alpha * sqrt(1 - pow(ro, epoch + 1)) / (1 - pow(beta, epoch + 1));
            Matrix result = a.binaryExpr(v, [&alpha](double _a, double _v){
                return -alpha * _v / sqrt(_a + 1e-8);
            });
            return result;
        }
    );
    auto mseData5 = bp5.train();

    auto mseData = Matrix(5, mseData1.cols());
    mseData.row(0) = mseData1.row(0);
    mseData.row(1) = mseData2.row(0);
    mseData.row(2) = mseData3.row(0);
    mseData.row(3) = mseData4.row(0);
    mseData.row(4) = mseData5.row(0);
    drawMSE(mseData);

    return 0;
}