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
include CMakeFiles/e57unpack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/e57unpack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/e57unpack.dir/flags.make

CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o: CMakeFiles/e57unpack.dir/flags.make
CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o: ../src/tools/e57unpack.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o -c /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/tools/e57unpack.cpp

CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/tools/e57unpack.cpp > CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.i

CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/tools/e57unpack.cpp -o CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.s

CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.requires:

.PHONY : CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.requires

CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.provides: CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.requires
	$(MAKE) -f CMakeFiles/e57unpack.dir/build.make CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.provides.build
.PHONY : CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.provides

CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.provides.build: CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o


# Object files for target e57unpack
e57unpack_OBJECTS = \
"CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o"

# External object files for target e57unpack
e57unpack_EXTERNAL_OBJECTS =

e57unpack: CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o
e57unpack: CMakeFiles/e57unpack.dir/build.make
e57unpack: libE57RefImpl.a
e57unpack: /usr/lib/x86_64-linux-gnu/libxerces-c.a
e57unpack: /usr/lib/x86_64-linux-gnu/libicuuc.so
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_program_options.a
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_system.a
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_thread.a
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_chrono.a
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_date_time.a
e57unpack: /usr/lib/x86_64-linux-gnu/libboost_atomic.a
e57unpack: /usr/lib/x86_64-linux-gnu/libpthread.so
e57unpack: CMakeFiles/e57unpack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable e57unpack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/e57unpack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/e57unpack.dir/build: e57unpack

.PHONY : CMakeFiles/e57unpack.dir/build

CMakeFiles/e57unpack.dir/requires: CMakeFiles/e57unpack.dir/src/tools/e57unpack.cpp.o.requires

.PHONY : CMakeFiles/e57unpack.dir/requires

CMakeFiles/e57unpack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/e57unpack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/e57unpack.dir/clean

CMakeFiles/e57unpack.dir/depend:
	cd /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312 /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312 /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles/e57unpack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/e57unpack.dir/depend

