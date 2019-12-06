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
include samples/c/CMakeFiles/example_polar_transforms.dir/depend.make

# Include the progress variables for this target.
include samples/c/CMakeFiles/example_polar_transforms.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c/CMakeFiles/example_polar_transforms.dir/flags.make

samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o: samples/c/CMakeFiles/example_polar_transforms.dir/flags.make
samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o: ../samples/c/polar_transforms.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/samples/c && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o   -c /mds-sfm/pipelines/opencv-2.4.11/samples/c/polar_transforms.c

samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/example_polar_transforms.dir/polar_transforms.c.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/samples/c && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mds-sfm/pipelines/opencv-2.4.11/samples/c/polar_transforms.c > CMakeFiles/example_polar_transforms.dir/polar_transforms.c.i

samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/example_polar_transforms.dir/polar_transforms.c.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/samples/c && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mds-sfm/pipelines/opencv-2.4.11/samples/c/polar_transforms.c -o CMakeFiles/example_polar_transforms.dir/polar_transforms.c.s

samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.requires:

.PHONY : samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.requires

samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.provides: samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.requires
	$(MAKE) -f samples/c/CMakeFiles/example_polar_transforms.dir/build.make samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.provides.build
.PHONY : samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.provides

samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.provides.build: samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o


# Object files for target example_polar_transforms
example_polar_transforms_OBJECTS = \
"CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o"

# External object files for target example_polar_transforms
example_polar_transforms_EXTERNAL_OBJECTS =

bin/c-example-polar_transforms: samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o
bin/c-example-polar_transforms: samples/c/CMakeFiles/example_polar_transforms.dir/build.make
bin/c-example-polar_transforms: lib/libopencv_core.a
bin/c-example-polar_transforms: lib/libopencv_flann.a
bin/c-example-polar_transforms: lib/libopencv_imgproc.a
bin/c-example-polar_transforms: lib/libopencv_highgui.a
bin/c-example-polar_transforms: lib/libopencv_ml.a
bin/c-example-polar_transforms: lib/libopencv_video.a
bin/c-example-polar_transforms: lib/libopencv_objdetect.a
bin/c-example-polar_transforms: lib/libopencv_photo.a
bin/c-example-polar_transforms: lib/libopencv_nonfree.a
bin/c-example-polar_transforms: lib/libopencv_features2d.a
bin/c-example-polar_transforms: lib/libopencv_calib3d.a
bin/c-example-polar_transforms: lib/libopencv_legacy.a
bin/c-example-polar_transforms: lib/libopencv_contrib.a
bin/c-example-polar_transforms: lib/libopencv_nonfree.a
bin/c-example-polar_transforms: lib/libopencv_gpu.a
bin/c-example-polar_transforms: lib/libopencv_photo.a
bin/c-example-polar_transforms: lib/libopencv_legacy.a
bin/c-example-polar_transforms: lib/libopencv_ocl.a
bin/c-example-polar_transforms: lib/libopencv_ml.a
bin/c-example-polar_transforms: lib/libopencv_video.a
bin/c-example-polar_transforms: lib/libopencv_objdetect.a
bin/c-example-polar_transforms: lib/libopencv_calib3d.a
bin/c-example-polar_transforms: lib/libopencv_features2d.a
bin/c-example-polar_transforms: lib/libopencv_flann.a
bin/c-example-polar_transforms: lib/libopencv_highgui.a
bin/c-example-polar_transforms: lib/libopencv_imgproc.a
bin/c-example-polar_transforms: lib/libopencv_core.a
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libpng.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libjasper.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libpng.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libjasper.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libz.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libImath.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libIlmImf.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libIex.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libHalf.so
bin/c-example-polar_transforms: /usr/lib/x86_64-linux-gnu/libIlmThread.so
bin/c-example-polar_transforms: samples/c/CMakeFiles/example_polar_transforms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/c-example-polar_transforms"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/samples/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_polar_transforms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c/CMakeFiles/example_polar_transforms.dir/build: bin/c-example-polar_transforms

.PHONY : samples/c/CMakeFiles/example_polar_transforms.dir/build

samples/c/CMakeFiles/example_polar_transforms.dir/requires: samples/c/CMakeFiles/example_polar_transforms.dir/polar_transforms.c.o.requires

.PHONY : samples/c/CMakeFiles/example_polar_transforms.dir/requires

samples/c/CMakeFiles/example_polar_transforms.dir/clean:
	cd /mds-sfm/pipelines/opencv-2.4.11/release/samples/c && $(CMAKE_COMMAND) -P CMakeFiles/example_polar_transforms.dir/cmake_clean.cmake
.PHONY : samples/c/CMakeFiles/example_polar_transforms.dir/clean

samples/c/CMakeFiles/example_polar_transforms.dir/depend:
	cd /mds-sfm/pipelines/opencv-2.4.11/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mds-sfm/pipelines/opencv-2.4.11 /mds-sfm/pipelines/opencv-2.4.11/samples/c /mds-sfm/pipelines/opencv-2.4.11/release /mds-sfm/pipelines/opencv-2.4.11/release/samples/c /mds-sfm/pipelines/opencv-2.4.11/release/samples/c/CMakeFiles/example_polar_transforms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c/CMakeFiles/example_polar_transforms.dir/depend

