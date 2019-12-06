# Install script for directory: /mds-sfm/pipelines/opencv-2.4.11/samples/c

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/c" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/fback_c.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/morphology.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/contours.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/motempl.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/polar_transforms.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/pyramid_segmentation.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/convert_cascade.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/delaunay.c"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/find_obj_ferns.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/mushroom.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/latentsvmdetect.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/mser_sample.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/tree_engine.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/smiledetect.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/adaptiveskindetector.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/facedetect.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/bgfg_codebook.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/find_obj.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/find_obj_calonder.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/blobtrack_sample.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/one_way_sample.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/one_way_train_0000.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/stuff.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/baboon200_rotated.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/lena.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/baboon.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/baboon200.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/airplane.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/one_way_train_0001.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/cat.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/fruits.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/box.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/puzzle.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/JCB.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/box_in_scene.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/agaricus-lepiota.data"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/waveform.data"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/build_all.sh"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/cvsample.dsp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/facedetect.cmd"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/CMakeLists.txt"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/c/one_way_train_images.txt"
    )
endif()

