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

# Utility rule file for pch_Generate_opencv_test_superres.

# Include the progress variables for this target.
include modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/progress.make

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch

modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch: ../modules/superres/test/test_precomp.hpp
modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch: modules/superres/test_precomp.hpp
modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch: lib/libopencv_test_superres_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres && /usr/bin/cmake -E make_directory /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres/test_precomp.hpp.gch
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/test" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ts/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ocl/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/gpu/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/photo/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/objdetect/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/legacy/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ml/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/3rdparty/include/opencl/1.2" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ocl/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/gpu/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/photo/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/objdetect/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/legacy/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ml/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/test" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ts/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ocl/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/gpu/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/photo/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/objdetect/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/legacy/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ml/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/3rdparty/include/opencl/1.2" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ocl/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/gpu/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/photo/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/objdetect/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/legacy/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ml/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build" -fsigned-char -W -Wall -Werror=return-type -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Winit-self -Wpointer-arith -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-array-bounds -Wno-aggressive-loop-optimizations -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -Wno-undef -Wno-shadow -x c++-header -o /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres/test_precomp.hpp

modules/superres/test_precomp.hpp: ../modules/superres/test/test_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres && /usr/bin/cmake -E copy_if_different /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres/test/test_precomp.hpp /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres/test_precomp.hpp

pch_Generate_opencv_test_superres: modules/superres/CMakeFiles/pch_Generate_opencv_test_superres
pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp.gch/opencv_test_superres_RELEASE.gch
pch_Generate_opencv_test_superres: modules/superres/test_precomp.hpp
pch_Generate_opencv_test_superres: modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build.make
.PHONY : pch_Generate_opencv_test_superres

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build: pch_Generate_opencv_test_superres
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/build

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/clean:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_superres.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/clean

modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/depend:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13 /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/superres /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/pch_Generate_opencv_test_superres.dir/depend

