#!/bin/bash
echo usage: bash init_build.sh \[true\|false\]
echo argv\[1\] ENABLE_SUDO to install sudo
enable_sudo=$1
image_name='myenv'
docker build --build-arg DOCKER_BASE_IMAGE=ubuntu:18.04
             -f Dockerfile.base -t $image_name:base .
docker build --build-arg DOCKER_BASE_IMAGE=$image_name:base \
             --build-arg UID=1000 \
             --build-arg GID=1000 \
             --build-arg PW=docker \
             --build-arg ENABLE_SUDO=true \
             -f Dockerfile.user -t $image_name:user .
docker build --build-arg DOCKER_BASE_IMAGE=$image_name:user \
             --build-arg UID=1000 \
             --build-arg GID=1000 \
             -f Dockerfile.dev -t image_name:dev .