# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download

# Utility rule file for eigen.

# Include the progress variables for this target.
include CMakeFiles/eigen.dir/progress.make

CMakeFiles/eigen: CMakeFiles/eigen-complete


CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-install
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-mkdir
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-download
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-update
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-patch
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-configure
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-build
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-install
CMakeFiles/eigen-complete: eigen-prefix/src/eigen-stamp/eigen-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'eigen'"
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles/eigen-complete
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-done

eigen-prefix/src/eigen-stamp/eigen-install: eigen-prefix/src/eigen-stamp/eigen-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No install step for 'eigen'"
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E echo_append
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-install

eigen-prefix/src/eigen-stamp/eigen-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'eigen'"
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/src
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/tmp
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E make_directory /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-mkdir

eigen-prefix/src/eigen-stamp/eigen-download: eigen-prefix/src/eigen-stamp/eigen-gitinfo.txt
eigen-prefix/src/eigen-stamp/eigen-download: eigen-prefix/src/eigen-stamp/eigen-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'eigen'"
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen && /usr/local/Cellar/cmake/3.13.4/bin/cmake -P /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/tmp/eigen-gitclone.cmake
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-download

eigen-prefix/src/eigen-stamp/eigen-update: eigen-prefix/src/eigen-stamp/eigen-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'eigen'"
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/src && /usr/local/Cellar/cmake/3.13.4/bin/cmake -P /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/tmp/eigen-gitupdate.cmake

eigen-prefix/src/eigen-stamp/eigen-patch: eigen-prefix/src/eigen-stamp/eigen-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "No patch step for 'eigen'"
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E echo_append
	/usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-patch

eigen-prefix/src/eigen-stamp/eigen-configure: eigen-prefix/tmp/eigen-cfgcmd.txt
eigen-prefix/src/eigen-stamp/eigen-configure: eigen-prefix/src/eigen-stamp/eigen-update
eigen-prefix/src/eigen-stamp/eigen-configure: eigen-prefix/src/eigen-stamp/eigen-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No configure step for 'eigen'"
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E echo_append
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-configure

eigen-prefix/src/eigen-stamp/eigen-build: eigen-prefix/src/eigen-stamp/eigen-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No build step for 'eigen'"
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E echo_append
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-build

eigen-prefix/src/eigen-stamp/eigen-test: eigen-prefix/src/eigen-stamp/eigen-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No test step for 'eigen'"
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E echo_append
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-build && /usr/local/Cellar/cmake/3.13.4/bin/cmake -E touch /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/eigen-prefix/src/eigen-stamp/eigen-test

eigen: CMakeFiles/eigen
eigen: CMakeFiles/eigen-complete
eigen: eigen-prefix/src/eigen-stamp/eigen-install
eigen: eigen-prefix/src/eigen-stamp/eigen-mkdir
eigen: eigen-prefix/src/eigen-stamp/eigen-download
eigen: eigen-prefix/src/eigen-stamp/eigen-update
eigen: eigen-prefix/src/eigen-stamp/eigen-patch
eigen: eigen-prefix/src/eigen-stamp/eigen-configure
eigen: eigen-prefix/src/eigen-stamp/eigen-build
eigen: eigen-prefix/src/eigen-stamp/eigen-test
eigen: CMakeFiles/eigen.dir/build.make

.PHONY : eigen

# Rule to build all files generated by this target.
CMakeFiles/eigen.dir/build: eigen

.PHONY : CMakeFiles/eigen.dir/build

CMakeFiles/eigen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eigen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eigen.dir/clean

CMakeFiles/eigen.dir/depend:
	cd /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download /Users/luizdoleron/Desktop/packt/workspace/hands-on_neural_network_programming_cpp_book/chapter7/minibatch_example/libs/eigen/download/CMakeFiles/eigen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/eigen.dir/depend

