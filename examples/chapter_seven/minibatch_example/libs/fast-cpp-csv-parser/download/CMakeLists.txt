cmake_minimum_required(VERSION 2.8.2)
project(fast-cpp-csv-parser-download NONE)

include(ExternalProject)
ExternalProject_Add(fast-cpp-csv-parser
  GIT_REPOSITORY    https://github.com/ben-strasser/fast-cpp-csv-parser.git
  GIT_TAG           master
  SOURCE_DIR        "../src"
  BINARY_DIR        ""
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
)
