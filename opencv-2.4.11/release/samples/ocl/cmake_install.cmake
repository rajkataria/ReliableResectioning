# Install script for directory: /mds-sfm/pipelines/opencv-2.4.11/samples/ocl

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/ocl" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/adaptive_bilateral_filter.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/tvl1_optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/squares.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/clahe.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/pyrlk_optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/hog.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/bgfg_segm.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/facedetect.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/surf_matcher.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/stereo_match.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/ocl/CMakeLists.txt"
    )
endif()

