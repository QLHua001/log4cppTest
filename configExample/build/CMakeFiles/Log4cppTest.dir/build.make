# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qlh/test/log4cppTest/configExample

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qlh/test/log4cppTest/configExample/build

# Include any dependencies generated for this target.
include CMakeFiles/Log4cppTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Log4cppTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Log4cppTest.dir/flags.make

CMakeFiles/Log4cppTest.dir/configExample.cpp.o: CMakeFiles/Log4cppTest.dir/flags.make
CMakeFiles/Log4cppTest.dir/configExample.cpp.o: ../configExample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qlh/test/log4cppTest/configExample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Log4cppTest.dir/configExample.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log4cppTest.dir/configExample.cpp.o -c /home/qlh/test/log4cppTest/configExample/configExample.cpp

CMakeFiles/Log4cppTest.dir/configExample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log4cppTest.dir/configExample.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qlh/test/log4cppTest/configExample/configExample.cpp > CMakeFiles/Log4cppTest.dir/configExample.cpp.i

CMakeFiles/Log4cppTest.dir/configExample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log4cppTest.dir/configExample.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qlh/test/log4cppTest/configExample/configExample.cpp -o CMakeFiles/Log4cppTest.dir/configExample.cpp.s

# Object files for target Log4cppTest
Log4cppTest_OBJECTS = \
"CMakeFiles/Log4cppTest.dir/configExample.cpp.o"

# External object files for target Log4cppTest
Log4cppTest_EXTERNAL_OBJECTS =

Log4cppTest: CMakeFiles/Log4cppTest.dir/configExample.cpp.o
Log4cppTest: CMakeFiles/Log4cppTest.dir/build.make
Log4cppTest: CMakeFiles/Log4cppTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qlh/test/log4cppTest/configExample/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Log4cppTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Log4cppTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Log4cppTest.dir/build: Log4cppTest

.PHONY : CMakeFiles/Log4cppTest.dir/build

CMakeFiles/Log4cppTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Log4cppTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Log4cppTest.dir/clean

CMakeFiles/Log4cppTest.dir/depend:
	cd /home/qlh/test/log4cppTest/configExample/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qlh/test/log4cppTest/configExample /home/qlh/test/log4cppTest/configExample /home/qlh/test/log4cppTest/configExample/build /home/qlh/test/log4cppTest/configExample/build /home/qlh/test/log4cppTest/configExample/build/CMakeFiles/Log4cppTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Log4cppTest.dir/depend

