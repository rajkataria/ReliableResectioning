# Install script for directory: /mds-sfm/pipelines/opencv-2.4.11/samples/gpu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu/performance" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/performance/performance.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/performance/tests.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/performance/performance.h"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/performance/CMakeLists.txt"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/multi.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/farneback_optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/morphology.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/super_resolution.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/cascadeclassifier.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/pyrlk_optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/alpha_comp.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/stereo_multi.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/houghlines.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/surf_keypoint_matcher.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/hog.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/bgfg_segm.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/brox_optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/generalized_hough.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/video_reader.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/video_writer.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/stereo_match.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/aloeL.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/aloeR.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/tsucuba_left.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/rubberwhale2.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/basketball1.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/rubberwhale1.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/tsucuba_right.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/road.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/basketball2.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/gpu/CMakeLists.txt"
    )
endif()

