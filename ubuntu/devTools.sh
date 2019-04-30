#!/bin/bash
# python dev
apt-get update && apt-get install -y \
    python-pip \
    python-ipdb \
    python3-pip \
    python3-ipdb

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh
conda config --set auto_activate_base false

