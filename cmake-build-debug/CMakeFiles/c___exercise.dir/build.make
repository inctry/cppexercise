# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "G:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "G:\Program Files\JetBrains\CLion 2019.2.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\project\c++_exercise

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\project\c++_exercise\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c___exercise.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c___exercise.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c___exercise.dir/flags.make

CMakeFiles/c___exercise.dir/main.cpp.obj: CMakeFiles/c___exercise.dir/flags.make
CMakeFiles/c___exercise.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=F:\project\c++_exercise\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/c___exercise.dir/main.cpp.obj"
	"F:\Program Files (x86)\Dev-Cpp\MinGW64\bin\g++.exe"  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\c___exercise.dir\main.cpp.obj -c F:\project\c++_exercise\main.cpp

CMakeFiles/c___exercise.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/c___exercise.dir/main.cpp.i"
	"F:\Program Files (x86)\Dev-Cpp\MinGW64\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\project\c++_exercise\main.cpp > CMakeFiles\c___exercise.dir\main.cpp.i

CMakeFiles/c___exercise.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/c___exercise.dir/main.cpp.s"
	"F:\Program Files (x86)\Dev-Cpp\MinGW64\bin\g++.exe" $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\project\c++_exercise\main.cpp -o CMakeFiles\c___exercise.dir\main.cpp.s

# Object files for target c___exercise
c___exercise_OBJECTS = \
"CMakeFiles/c___exercise.dir/main.cpp.obj"

# External object files for target c___exercise
c___exercise_EXTERNAL_OBJECTS =

c___exercise.exe: CMakeFiles/c___exercise.dir/main.cpp.obj
c___exercise.exe: CMakeFiles/c___exercise.dir/build.make
c___exercise.exe: CMakeFiles/c___exercise.dir/linklibs.rsp
c___exercise.exe: CMakeFiles/c___exercise.dir/objects1.rsp
c___exercise.exe: CMakeFiles/c___exercise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=F:\project\c++_exercise\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable c___exercise.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\c___exercise.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c___exercise.dir/build: c___exercise.exe

.PHONY : CMakeFiles/c___exercise.dir/build

CMakeFiles/c___exercise.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\c___exercise.dir\cmake_clean.cmake
.PHONY : CMakeFiles/c___exercise.dir/clean

CMakeFiles/c___exercise.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\project\c++_exercise F:\project\c++_exercise F:\project\c++_exercise\cmake-build-debug F:\project\c++_exercise\cmake-build-debug F:\project\c++_exercise\cmake-build-debug\CMakeFiles\c___exercise.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c___exercise.dir/depend
