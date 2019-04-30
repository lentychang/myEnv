#!/bin/bash
echo usage: bash init_build.sh \[true\|false\]
echo argv\[1\] ENABLE_NVIDIA to install nvidia driver, here nvidia-384
enable_nvidia=$1
docker build --build-arg ENABLE_NVIDIA=$enable_nvidia -t ros-docker-base:latest -f ros_base/Docker/Dockerfile . 
docker build --build-arg ENABLE_NVIDIA=$enable_nvidia -t gazebo:base -f gazebo/Docker/Dockerfile.base . 
docker build -t gazebo:ide -f gazebo/Docker/Dockerfile.ide . 
docker build -t gazebo:latest -f gazebo/Docker/Dockerfile.latest . 
docker build --build-arg ENABLE_NVIDIA=$enable_nvidia -t moveit:base -f moveit/Docker/Dockerfile.base . 
docker build -t moveit:ide -f moveit/Docker/Dockerfile.ide . 
docker build -t moveit:latest -f moveit/Docker/Dockerfile.latest . 
docker build -t conda:python3.7 -f conda/Dockerfile.python3 .
docker build --build-arg ENABLE_NVIDIA=$enable_nvidia -t pythonocc:base -f pythonocc/Docker/Dockerfile.base . 
docker build -t pythonocc:ide -f pythonocc/Docker/Dockerfile.ide . 
docker build -t pythonocc:latest -f pythonocc/Docker/Dockerfile.latest . 
docker build --build-arg ENABLE_NVIDIA=$enable_nvidia -t pcl:base -f pcl/Docker/Dockerfile.base .
docker build -t pcl:ide -f pcl/Docker/Dockerfile.ide .
docker build -t pcl:latest -f pcl/Docker/Dockerfile.latest .
