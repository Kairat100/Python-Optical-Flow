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

# Utility rule file for pch_Generate_opencv_test_highgui.

# Include the progress variables for this target.
include modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/progress.make

modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui: modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch

modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch: ../modules/highgui/test/test_precomp.hpp
modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch: modules/highgui/test_precomp.hpp
modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch: lib/libopencv_test_highgui_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui && /usr/bin/cmake -E make_directory /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui/test_precomp.hpp.gch
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-DQT_CORE_LIB" "-DQT_GUI_LIB" "-DQT_CORE_LIB" "-DQT_WIDGETS_LIB" "-DQT_GUI_LIB" "-DQT_CORE_LIB" "-DQT_TESTLIB_LIB" "-DQT_CORE_LIB" "-DQT_CONCURRENT_LIB" "-DQT_CORE_LIB" "-DQT_OPENGL_LIB" "-DQT_WIDGETS_LIB" "-DQT_GUI_LIB" "-DQT_CORE_LIB" "-DHIGHGUI_EXPORTS" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/test" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ts/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include/x86_64-linux-gnu" -isystem"/usr/include" -isystem"/usr/include/OpenEXR" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtGui" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtWidgets" -isystem"/usr/include/qt5/QtGui" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtTest" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtConcurrent" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtOpenGL" -isystem"/usr/include/qt5/QtWidgets" -isystem"/usr/include/qt5/QtGui" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/test" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/video/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/calib3d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/features2d/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/flann/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/ts/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/imgproc/include" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/core/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/src" -I"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/include" -isystem"/home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include" -isystem"/usr/include/x86_64-linux-gnu" -isystem"/usr/include" -isystem"/usr/include/OpenEXR" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtGui" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtWidgets" -isystem"/usr/include/qt5/QtGui" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtTest" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtConcurrent" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/qt5" -isystem"/usr/include/qt5/QtOpenGL" -isystem"/usr/include/qt5/QtWidgets" -isystem"/usr/include/qt5/QtGui" -isystem"/usr/include/qt5/QtCore" -isystem"/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++-64" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -isystem"/usr/include/gstreamer-0.10" -isystem"/usr/include/glib-2.0" -isystem"/usr/lib/x86_64-linux-gnu/glib-2.0/include" -isystem"/usr/include/libxml2" -fsigned-char -W -Wall -Werror=return-type -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-array-bounds -Wno-aggressive-loop-optimizations -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -msse -msse2 -msse3 -ffunction-sections -Wno-deprecated-declarations -Wno-clobbered -x c++-header -o /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui/test_precomp.hpp

modules/highgui/test_precomp.hpp: ../modules/highgui/test/test_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating test_precomp.hpp"
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui && /usr/bin/cmake -E copy_if_different /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui/test/test_precomp.hpp /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui/test_precomp.hpp

pch_Generate_opencv_test_highgui: modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui
pch_Generate_opencv_test_highgui: modules/highgui/test_precomp.hpp.gch/opencv_test_highgui_RELEASE.gch
pch_Generate_opencv_test_highgui: modules/highgui/test_precomp.hpp
pch_Generate_opencv_test_highgui: modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/build.make
.PHONY : pch_Generate_opencv_test_highgui

# Rule to build all files generated by this target.
modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/build: pch_Generate_opencv_test_highgui
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/build

modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/clean:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_test_highgui.dir/cmake_clean.cmake
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/clean

modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/depend:
	cd /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13 /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/modules/highgui /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui /home/shynggys/DenseTrajectories/Python-Optical-Flow/OpenCV/opencv-2.4.13/build/modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/highgui/CMakeFiles/pch_Generate_opencv_test_highgui.dir/depend

