#!/bin/bash
echo usage: bash init_build.sh \[true\|false\]
echo argv\[1\] ENABLE_SUDO to install sudo
enable_sudo=$1
docker build --build-arg DOCKER_BASE_IMAGE=ubuntu:18.04 -f Dockerfile.base -t myenv.base .
docker build --build-arg DOCKER_BASE_IMAGE=myenv.base \
             --build-arg UID=1000 \
             --build-arg GID=1000 \
             --build-arg PW=docker \
             --build-arg ENABLE_SUDO=true \
             -f Dockerfile.user -t myenv:user .
 
