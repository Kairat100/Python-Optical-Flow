# Install script for directory: /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/contours2.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/bagofwords_classification.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/connected_components.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/kmeans.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/laplace.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/em.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/lkdemo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/video_dmtx.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/inpaint.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/fitellipse.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/videostab.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/demhist.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/calibration_artificial.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/stitching_detailed.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/matcher_simple.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/facerec_demo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/kalman.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/camshiftdemo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/openni_capture.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/logpolar_bsm.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/peopledetect.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/retinaDemo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/build3dmodel.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/generic_descriptor_match.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/freak_demo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/3calibration.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/image_sequence.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/detector_descriptor_evaluation.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/facial_features.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/houghcircles.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/dft.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pca.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/phase_corr.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/polynominal_equations.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/select3dobj.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/houghlines.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/stereo_calib.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/stereo_match.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/cout_mat.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/chamfer.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/convexhull.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/hybridtrackingsample.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/rgbdodometry.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/segment_objects.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/starter_video.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/morphology2.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/tvl1_optical_flow.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/stitching.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/bgfg_segm.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/detection_based_tracker_sample.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/filestorage.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/starter_imagelist.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/letter_recog.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/linemod.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/video_homography.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/brief_match_test.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/imagelist_creator.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/watershed.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/meanshift_segmentation.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/fback.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/simpleflow_demo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/drawing.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/videocapture_pvapi.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/descriptor_extractor_matcher.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/gencolors.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/squares.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/detector_descriptor_matcher_evaluation.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/ffilldemo.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/delaunay2.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/bgfg_gmg.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/fabmap_sample.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/opencv_version.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/latentsvm_multidetect.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/image.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/edge.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/matching_to_many_images.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/distrans.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping_video.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/intelperc_capture.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/minarea.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/grabcut.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/calibration.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/points_classifier.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right11.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left05.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right14.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right09.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left04.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right06.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left11.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/baboon.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left14.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left02.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left07.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right05.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left13.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right03.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left12.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/board.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right01.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left06.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left01.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left09.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/stuff.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right04.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right13.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right07.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left08.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right08.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/lena.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/fruits.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right02.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/right12.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/building.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/left03.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pic3.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/tsukuba_r.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pic1.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pic4.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pic2.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/logo_in_clutter.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/tsukuba_l.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/templ.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pic6.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/logo.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/pic5.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/letter-recognition.data"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/CMakeLists.txt"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/facerec_at_t.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")

