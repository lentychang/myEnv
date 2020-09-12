#!/bin/bash
# Install miniconda3

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash ./miniconda.sh -b
echo "source ~/miniconda3/etc/profile.d/conda.sh" >> ~/.bashrc
rm miniconda.sh
