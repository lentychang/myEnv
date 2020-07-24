#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install -y build-essential cmake unzip pkg-config git
apt-get install -y libjpeg-dev libpng-dev libtiff-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk-3-dev libatlas-base-dev gfortran python3-dev python3-pip python3-venv
git clone --depth=1 https://github.com/opencv/opencv.git && git clone --depth=1 https://github.com/opencv/opencv_contrib.git
cd opencv && mkdir build && cd build
python3 -m venv ~/.venv/cv
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D INSTALL_C_EXAMPLES=OFF \
	-D OPENCV_ENABLE_NONFREE=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules\
	-D PYTHON_EXECUTABLE=~/.venv/cv/bin/python \
	-D BUILD_EXAMPLES=ON ..
#	-D Python3_FIND_VIRTUALENV=FIRST \
make -j3
make install
