#!/bin/bash
# basic
apt-get clean && \
    apt-get update && apt-get -y install \
    htop \
    build-essential \
    apt-utils \    
    ssh \
    git \
    vim \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    wget \
    curl \
    openssh-server \
    xorg