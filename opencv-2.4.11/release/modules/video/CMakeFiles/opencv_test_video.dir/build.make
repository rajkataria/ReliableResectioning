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
include modules/video/CMakeFiles/opencv_test_video.dir/depend.make

# Include the progress variables for this target.
include modules/video/CMakeFiles/opencv_test_video.dir/progress.make

# Include the compile flags for this target's objects.
include modules/video/CMakeFiles/opencv_test_video.dir/flags.make

modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o: ../modules/video/test/test_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_main.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_main.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_main.cpp > CMakeFiles/opencv_test_video.dir/test/test_main.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_main.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_main.cpp -o CMakeFiles/opencv_test_video.dir/test/test_main.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o: ../modules/video/test/test_backgroundsubtractor_gbh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_backgroundsubtractor_gbh.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_backgroundsubtractor_gbh.cpp > CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_backgroundsubtractor_gbh.cpp -o CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o: ../modules/video/test/test_tvl1optflow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_tvl1optflow.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_tvl1optflow.cpp > CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_tvl1optflow.cpp -o CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o: ../modules/video/test/test_simpleflow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_simpleflow.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_simpleflow.cpp > CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_simpleflow.cpp -o CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o: ../modules/video/test/test_estimaterigid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_estimaterigid.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_estimaterigid.cpp > CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_estimaterigid.cpp -o CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o: ../modules/video/test/test_optflowpyrlk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_optflowpyrlk.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_optflowpyrlk.cpp > CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_optflowpyrlk.cpp -o CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o: ../modules/video/test/test_camshift.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_camshift.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_camshift.cpp > CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_camshift.cpp -o CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o: ../modules/video/test/test_motiontemplates.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_motiontemplates.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_motiontemplates.cpp > CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_motiontemplates.cpp -o CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o: ../modules/video/test/test_accum.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_accum.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_accum.cpp > CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_accum.cpp -o CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o


modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o: modules/video/CMakeFiles/opencv_test_video.dir/flags.make
modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o: ../modules/video/test/test_kalman.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -o CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o -c /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_kalman.cpp

modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.i"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -E /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_kalman.cpp > CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.i

modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.s"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS)  -Winvalid-pch -S /mds-sfm/pipelines/opencv-2.4.11/modules/video/test/test_kalman.cpp -o CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.s

modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.requires:

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.requires

modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.provides: modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.requires
	$(MAKE) -f modules/video/CMakeFiles/opencv_test_video.dir/build.make modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.provides.build
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.provides

modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.provides.build: modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o


# Object files for target opencv_test_video
opencv_test_video_OBJECTS = \
"CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o" \
"CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o"

# External object files for target opencv_test_video
opencv_test_video_EXTERNAL_OBJECTS =

bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/build.make
bin/opencv_test_video: lib/libopencv_core.a
bin/opencv_test_video: lib/libopencv_imgproc.a
bin/opencv_test_video: lib/libopencv_video.a
bin/opencv_test_video: lib/libopencv_ts.a
bin/opencv_test_video: lib/libopencv_highgui.a
bin/opencv_test_video: lib/libopencv_core.a
bin/opencv_test_video: lib/libopencv_flann.a
bin/opencv_test_video: lib/libopencv_imgproc.a
bin/opencv_test_video: lib/libopencv_highgui.a
bin/opencv_test_video: lib/libopencv_features2d.a
bin/opencv_test_video: lib/libopencv_video.a
bin/opencv_test_video: lib/libopencv_highgui.a
bin/opencv_test_video: lib/libopencv_imgproc.a
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libpng.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libjasper.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libjpeg.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libpng.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libtiff.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libjasper.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libImath.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libIlmImf.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libIex.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libHalf.so
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libIlmThread.so
bin/opencv_test_video: lib/libopencv_flann.a
bin/opencv_test_video: lib/libopencv_core.a
bin/opencv_test_video: /usr/lib/x86_64-linux-gnu/libz.so
bin/opencv_test_video: modules/video/CMakeFiles/opencv_test_video.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mds-sfm/pipelines/opencv-2.4.11/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable ../../bin/opencv_test_video"
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_video.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/video/CMakeFiles/opencv_test_video.dir/build: bin/opencv_test_video

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/build

modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_main.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_backgroundsubtractor_gbh.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_tvl1optflow.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_simpleflow.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_estimaterigid.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_optflowpyrlk.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_camshift.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_motiontemplates.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_accum.cpp.o.requires
modules/video/CMakeFiles/opencv_test_video.dir/requires: modules/video/CMakeFiles/opencv_test_video.dir/test/test_kalman.cpp.o.requires

.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/requires

modules/video/CMakeFiles/opencv_test_video.dir/clean:
	cd /mds-sfm/pipelines/opencv-2.4.11/release/modules/video && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_video.dir/cmake_clean.cmake
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/clean

modules/video/CMakeFiles/opencv_test_video.dir/depend:
	cd /mds-sfm/pipelines/opencv-2.4.11/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mds-sfm/pipelines/opencv-2.4.11 /mds-sfm/pipelines/opencv-2.4.11/modules/video /mds-sfm/pipelines/opencv-2.4.11/release /mds-sfm/pipelines/opencv-2.4.11/release/modules/video /mds-sfm/pipelines/opencv-2.4.11/release/modules/video/CMakeFiles/opencv_test_video.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/video/CMakeFiles/opencv_test_video.dir/depend

