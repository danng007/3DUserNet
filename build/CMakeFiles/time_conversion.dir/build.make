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
include CMakeFiles/time_conversion.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/time_conversion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/time_conversion.dir/flags.make

CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o: CMakeFiles/time_conversion.dir/flags.make
CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o: ../src/time_conversion/time_conversion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o   -c /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/time_conversion/time_conversion.c

CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/time_conversion/time_conversion.c > CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.i

CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/src/time_conversion/time_conversion.c -o CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.s

CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.requires:

.PHONY : CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.requires

CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.provides: CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.requires
	$(MAKE) -f CMakeFiles/time_conversion.dir/build.make CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.provides.build
.PHONY : CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.provides

CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.provides.build: CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o


# Object files for target time_conversion
time_conversion_OBJECTS = \
"CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o"

# External object files for target time_conversion
time_conversion_EXTERNAL_OBJECTS =

libtime_conversion.a: CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o
libtime_conversion.a: CMakeFiles/time_conversion.dir/build.make
libtime_conversion.a: CMakeFiles/time_conversion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libtime_conversion.a"
	$(CMAKE_COMMAND) -P CMakeFiles/time_conversion.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/time_conversion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/time_conversion.dir/build: libtime_conversion.a

.PHONY : CMakeFiles/time_conversion.dir/build

CMakeFiles/time_conversion.dir/requires: CMakeFiles/time_conversion.dir/src/time_conversion/time_conversion.c.o.requires

.PHONY : CMakeFiles/time_conversion.dir/requires

CMakeFiles/time_conversion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/time_conversion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/time_conversion.dir/clean

CMakeFiles/time_conversion.dir/depend:
	cd /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312 /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312 /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build /home/wantao/Desktop/3DUserNet/E57RefImpl_src-1.1.312/build/CMakeFiles/time_conversion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/time_conversion.dir/depend
