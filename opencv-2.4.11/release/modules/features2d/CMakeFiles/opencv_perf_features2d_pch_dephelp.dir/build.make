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
CMAKE_SOURCE_DIR = /mds-sfm/pipelines/opencv-2.4.11

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mds-sfm/pipelines/opencv-2.4.11/release

# Include any dependencies generated for this target.
include modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/depend.make

# Include the progress variables for this target.
include modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/progress.make

# Include the compile flags for this target's objects.
include modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/flags.make

modules/features2d/opencv_perf_features2d_pch_dephelp.cxx: ../modules/features2d/perf/perf_precomp.hpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating opencv_perf_features2d_pch_dephelp.cxx"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/cmake -E echo \#include\ \"/mds-sfm/pipelines/opencv-2.4.11/modules/features2d/perf/perf_precomp.hpp\" > /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/cmake -E echo int\ testfunction\(\)\; >> /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/cmake -E echo int\ testfunction\(\) >> /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/cmake -E echo { >> /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/cmake -E echo \ \ \ \ \return\ 0\; >> /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/cmake -E echo } >> /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/flags.make
modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o: modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o -c /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx > CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.i

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/opencv_perf_features2d_pch_dephelp.cxx -o CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.s

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.requires:

.PHONY : modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.requires

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.provides: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.requires
	$(MAKE) -f modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/build.make modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.provides.build
.PHONY : modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.provides

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.provides.build: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o


# Object files for target opencv_perf_features2d_pch_dephelp
opencv_perf_features2d_pch_dephelp_OBJECTS = \
"CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o"

# External object files for target opencv_perf_features2d_pch_dephelp
opencv_perf_features2d_pch_dephelp_EXTERNAL_OBJECTS =

lib/libopencv_perf_features2d_pch_dephelp.a: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o
lib/libopencv_perf_features2d_pch_dephelp.a: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/build.make
lib/libopencv_perf_features2d_pch_dephelp.a: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../lib/libopencv_perf_features2d_pch_dephelp.a"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/cmake_clean_target.cmake
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/build: lib/libopencv_perf_features2d_pch_dephelp.a

.PHONY : modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/build

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/requires: modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/opencv_perf_features2d_pch_dephelp.cxx.o.requires

.PHONY : modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/requires

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/clean:
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/cmake_clean.cmake
.PHONY : modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/clean

modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/depend: modules/features2d/opencv_perf_features2d_pch_dephelp.cxx
	cd /mds-sfm/pipelines/opencv-2.4.11/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mds-sfm/pipelines/opencv-2.4.11 /mds-sfm/pipelines/opencv-2.4.11/modules/features2d /mds-sfm/pipelines/opencv-2.4.11/release /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d /mds-sfm/pipelines/opencv-2.4.11/release/modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/features2d/CMakeFiles/opencv_perf_features2d_pch_dephelp.dir/depend

