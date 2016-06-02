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
include samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/depend.make

# Include the progress variables for this target.
include samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/progress.make

# Include the compile flags for this target's objects.
include samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/flags.make

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/flags.make
samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o: ../samples/gpu/stereo_multi.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o -c /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/gpu/stereo_multi.cpp

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.i"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/gpu/stereo_multi.cpp > CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.i

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.s"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/gpu/stereo_multi.cpp -o CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.s

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.requires:
.PHONY : samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.requires

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.provides: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.requires
	$(MAKE) -f samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/build.make samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.provides.build
.PHONY : samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.provides

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.provides.build: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o

# Object files for target example_gpu_stereo_multi
example_gpu_stereo_multi_OBJECTS = \
"CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o"

# External object files for target example_gpu_stereo_multi
example_gpu_stereo_multi_EXTERNAL_OBJECTS =

bin/gpu-example-stereo_multi: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o
bin/gpu-example-stereo_multi: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/build.make
bin/gpu-example-stereo_multi: /usr/lib/x86_64-linux-gnu/libGLU.so
bin/gpu-example-stereo_multi: /usr/lib/x86_64-linux-gnu/libGL.so
bin/gpu-example-stereo_multi: /usr/lib/x86_64-linux-gnu/libSM.so
bin/gpu-example-stereo_multi: /usr/lib/x86_64-linux-gnu/libICE.so
bin/gpu-example-stereo_multi: /usr/lib/x86_64-linux-gnu/libX11.so
bin/gpu-example-stereo_multi: /usr/lib/x86_64-linux-gnu/libXext.so
bin/gpu-example-stereo_multi: lib/libopencv_core.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_flann.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_imgproc.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_highgui.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_ml.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_video.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_objdetect.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_features2d.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_calib3d.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_legacy.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_contrib.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_gpu.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_superres.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_nonfree.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_ocl.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_gpu.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_legacy.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_ml.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_video.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_objdetect.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_calib3d.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_features2d.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_flann.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_highgui.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_photo.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_imgproc.so.2.4.13
bin/gpu-example-stereo_multi: lib/libopencv_core.so.2.4.13
bin/gpu-example-stereo_multi: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/gpu-example-stereo_multi"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_gpu_stereo_multi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/build: bin/gpu-example-stereo_multi
.PHONY : samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/build

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/requires: samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/stereo_multi.cpp.o.requires
.PHONY : samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/requires

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/clean:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu && $(CMAKE_COMMAND) -P CMakeFiles/example_gpu_stereo_multi.dir/cmake_clean.cmake
.PHONY : samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/clean

samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/depend:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13 /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/samples/gpu /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/gpu/CMakeFiles/example_gpu_stereo_multi.dir/depend

