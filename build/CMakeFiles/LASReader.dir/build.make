# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build

# Include any dependencies generated for this target.
include CMakeFiles/LASReader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LASReader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LASReader.dir/flags.make

CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o: CMakeFiles/LASReader.dir/flags.make
CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o: ../src/LASReader/LASReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o -c /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/LASReader/LASReader.cpp

CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/LASReader/LASReader.cpp > CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.i

CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/LASReader/LASReader.cpp -o CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.s

CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.requires:

.PHONY : CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.requires

CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.provides: CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.requires
	$(MAKE) -f CMakeFiles/LASReader.dir/build.make CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.provides.build
.PHONY : CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.provides

CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.provides.build: CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o


# Object files for target LASReader
LASReader_OBJECTS = \
"CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o"

# External object files for target LASReader
LASReader_EXTERNAL_OBJECTS =

libLASReader.a: CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o
libLASReader.a: CMakeFiles/LASReader.dir/build.make
libLASReader.a: CMakeFiles/LASReader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libLASReader.a"
	$(CMAKE_COMMAND) -P CMakeFiles/LASReader.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LASReader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LASReader.dir/build: libLASReader.a

.PHONY : CMakeFiles/LASReader.dir/build

CMakeFiles/LASReader.dir/requires: CMakeFiles/LASReader.dir/src/LASReader/LASReader.cpp.o.requires

.PHONY : CMakeFiles/LASReader.dir/requires

CMakeFiles/LASReader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LASReader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LASReader.dir/clean

CMakeFiles/LASReader.dir/depend:
	cd /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312 /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312 /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles/LASReader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LASReader.dir/depend

