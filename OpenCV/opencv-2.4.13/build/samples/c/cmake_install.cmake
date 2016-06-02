# Install script for directory: /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/c" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/motempl.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/morphology.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/polar_transforms.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/delaunay.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/pyramid_segmentation.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/contours.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/convert_cascade.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/fback_c.c"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/adaptiveskindetector.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/smiledetect.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/tree_engine.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/bgfg_codebook.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/blobtrack_sample.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/mushroom.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/find_obj_calonder.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/latentsvmdetect.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/mser_sample.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/find_obj_ferns.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/facedetect.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/one_way_sample.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/find_obj.cpp"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/baboon.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/baboon200_rotated.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/one_way_train_0000.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/cat.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/baboon200.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/airplane.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/one_way_train_0001.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/stuff.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/lena.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/fruits.jpg"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/box.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/JCB.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/puzzle.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/box_in_scene.png"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/agaricus-lepiota.data"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/waveform.data"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/facedetect.cmd"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/one_way_train_images.txt"
    "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/CMakeLists.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/c" TYPE PROGRAM FILES "/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/c/build_all.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")

