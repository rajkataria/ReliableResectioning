# Install script for directory: /mds-sfm/pipelines/opencv-2.4.11/samples/cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/tvl1_optical_flow.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/fitellipse.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/squares.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/intelperc_capture.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/delaunay2.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/drawing.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/bgfg_gmg.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/openni_capture.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/grabcut.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/ffilldemo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/stitching.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/select3dobj.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/meanshift_segmentation.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/chamfer.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/image_sequence.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/video_dmtx.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/peopledetect.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/image.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/phase_corr.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/logpolar_bsm.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/videocapture_pvapi.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pca.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/segment_objects.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/facial_features.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/stitching_detailed.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/filestorage.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/lkdemo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/retinaDemo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/houghlines.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/kmeans.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/generic_descriptor_match.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/opencv_version.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/stereo_calib.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/matcher_simple.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/starter_video.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/hybridtrackingsample.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping_video.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/fback.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/imagelist_creator.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/freak_demo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/convexhull.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/em.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/brief_match_test.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/fabmap_sample.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/dft.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/rgbdodometry.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/kalman.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/edge.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/camshiftdemo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/morphology2.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/contours2.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/minarea.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/video_homography.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/facerec_demo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/starter_imagelist.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/calibration_artificial.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/cout_mat.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/laplace.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/letter_recog.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/bgfg_segm.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/build3dmodel.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/inpaint.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/simpleflow_demo.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/detection_based_tracker_sample.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/latentsvm_multidetect.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/detector_descriptor_matcher_evaluation.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/distrans.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/demhist.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/matching_to_many_images.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/descriptor_extractor_matcher.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/watershed.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/detector_descriptor_evaluation.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/videostab.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/connected_components.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/gencolors.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/houghcircles.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/3calibration.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/calibration.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/points_classifier.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/bagofwords_classification.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/linemod.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/stereo_match.cpp"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right07.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/board.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right11.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right01.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/stuff.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right06.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right09.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left07.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left03.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left02.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/lena.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/baboon.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right12.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left01.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right02.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right04.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left09.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left04.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left12.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right05.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/building.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right08.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right03.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left11.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left14.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left05.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left13.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left08.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/fruits.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right14.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/left06.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/right13.jpg"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/templ.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/logo.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/tsukuba_r.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pic6.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pic2.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/tsukuba_l.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pic1.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pic3.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pic5.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/pic4.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/logo_in_clutter.png"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/letter-recognition.data"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/CMakeLists.txt"
    "/mds-sfm/pipelines/opencv-2.4.11/samples/cpp/facerec_at_t.txt"
    )
endif()

