#!/bin/bash

# C++ dev setup
# vim ...s

# C++ compile acceleration
apt-get update && apt-get install -y \
    gdb \
    cmake \
    cmake-gui

#install ccache to accelerate build
apt-get update && 
apt-get install -y ccache && \

#cd /usr/local && \
#mkdir bin-ccache && \
#cd bin-ccache && \
#ln -s $(which ccache) gcc && \
#ln -s $(which ccache) g++ && \
#ln -s $(which ccache) cpp && \
#ln -s $(which ccache) c++ && \
#ln -s $(which ccache) cc && \
echo "export CCACHE_DIR=/tmp/.cache" >> ~/.bashrc && \
echo "export set CC='ccache gcc'" >> ~/.bashrc && \
echo "export set CXX='ccache g++'" >> ~/.bashrc && \
echo "export PATH=/usr/lib/ccache:\$PATH" >> ~/.bashrc

echo "alias catkin_make='catkin_make -DCMAKE_C_COMPILER=/usr/local/bin-ccache/gcc -DCMAKE_CXX_COMPILER=/usr/local/bin-ccache/g++'" >> ~/.bashrc

#install gold-linker to accelerate linking
# since ubuntu 18, binutils-gold is put in binutils
apt-get install -y binutils-gold && \
update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin//usr/bin/x86_64-linux-gnu-ld.gold" 20 && \
update-alternatives --install "/usr/bin/ld" "ld" "/usr/bin//usr/bin/x86_64-linux-gnu-ld.bfd" 10
