# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build

# Include any dependencies generated for this target.
include samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/depend.make

# Include the progress variables for this target.
include samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/progress.make

# Include the compile flags for this target's objects.
include samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/flags.make

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/flags.make
samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o: ../samples/cpp/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o -c /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.i"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp > CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.i

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.s"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp -o CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.s

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.requires:
.PHONY : samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.requires

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.provides: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.requires
	$(MAKE) -f samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/build.make samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.provides.build
.PHONY : samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.provides

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.provides.build: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o

# Object files for target tutorial_non_linear_svms
tutorial_non_linear_svms_OBJECTS = \
"CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o"

# External object files for target tutorial_non_linear_svms
tutorial_non_linear_svms_EXTERNAL_OBJECTS =

bin/cpp-tutorial-non_linear_svms: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o
bin/cpp-tutorial-non_linear_svms: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/build.make
bin/cpp-tutorial-non_linear_svms: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/cpp-tutorial-non_linear_svms: /usr/lib/x86_64-linux-gnu/libGL.so
bin/cpp-tutorial-non_linear_svms: /usr/lib/x86_64-linux-gnu/libSM.so
bin/cpp-tutorial-non_linear_svms: /usr/lib/x86_64-linux-gnu/libICE.so
bin/cpp-tutorial-non_linear_svms: /usr/lib/x86_64-linux-gnu/libX11.so
bin/cpp-tutorial-non_linear_svms: /usr/lib/x86_64-linux-gnu/libXext.so
bin/cpp-tutorial-non_linear_svms: lib/libopencv_core.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_flann.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_imgproc.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_highgui.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_ml.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_video.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_objdetect.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_photo.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_features2d.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_calib3d.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_legacy.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_contrib.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_stitching.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_videostab.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_gpu.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_ocl.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_nonfree.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_ocl.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_gpu.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_objdetect.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_photo.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_legacy.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_ml.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_video.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_calib3d.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_features2d.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_flann.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_highgui.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_imgproc.so.2.4.13
bin/cpp-tutorial-non_linear_svms: lib/libopencv_core.so.2.4.13
bin/cpp-tutorial-non_linear_svms: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/cpp-tutorial-non_linear_svms"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_non_linear_svms.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/build: bin/cpp-tutorial-non_linear_svms
.PHONY : samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/build

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/requires: samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/tutorial_code/ml/non_linear_svms/non_linear_svms.cpp.o.requires
.PHONY : samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/requires

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/clean:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp && $(CMAKE_COMMAND) -P CMakeFiles/tutorial_non_linear_svms.dir/cmake_clean.cmake
.PHONY : samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/clean

samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/depend:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13 /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/cpp /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/cpp/CMakeFiles/tutorial_non_linear_svms.dir/depend

