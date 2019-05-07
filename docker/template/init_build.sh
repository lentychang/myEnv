#!/bin/bash
echo usage: bash init_build.sh \[true\|false\]
echo argv\[1\] ENABLE_SUDO to install sudo
 
read -s -p "please enter the password for user: " pw
pw=${pw:-docker}
read -p "enable_sudo?" enable_sudo
enable_sudo=${enable_sudo:-yes}
case $enable_sudo in
        [yY]*) enable_sudo=true;;
        [nN]*) enable_sudo=false;;
        *) echo "please enter y or n" && exit 1;;
esac

image_name=myenv
docker build --build-arg DOCKER_BASE_IMAGE=ubuntu:18.04
             -f Dockerfile.base -t $image_name:base .
docker build --build-arg DOCKER_BASE_IMAGE=$image_name:base \
             --build-arg UID=1000 \
             --build-arg GID=1000 \
             --build-arg PW=$pw \
             --build-arg ENABLE_SUDO=$enable_sudo \
             -f Dockerfile.user -t $image_name:user .
docker build  --build-arg DOCKER_BASE_IMAGE=$image_name:user \
             --build-arg UID=1000 \
             --build-arg GID=1000 \
             -f Dockerfile.dev -t $image_name:dev .
