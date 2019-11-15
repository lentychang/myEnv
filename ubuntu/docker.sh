#!/bin/bash
apt-get update
apt-get install -y\
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io
curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# allow root user to display gui on desktop(for gui in docker container)
echo "xhost +local:root" >> ~/.bashrc

# allow every user to display gui on desktop(for gui in docker container)
# echo "xhost +SI:localuser:root" >> ~/.bashrc
# run the following to remove the access, in order to stay safe
# xhost -local:root

# enable user to run docker as non-root
groupadd docker
usermod -aG docker $USER

# start docker daemon when os startup
systemctl enable docker



distribution=$(. /etc/os-release;echo $ID$VERSION_ID)

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
apt-get update && sudo apt-get install -y nvidia-container-toolkit
systemctl restart docker
