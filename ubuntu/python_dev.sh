#!/bin/bash
# python dev

# python vim ...
apt-get update && apt-get install -y \
    python-pip \
    python-ipdb \
    python3-pip \
    python3-ipdb

# miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash ./miniconda.sh -b
conda config --set auto_activate_base false
rm miniconda.sh

