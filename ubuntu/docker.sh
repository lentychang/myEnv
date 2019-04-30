#!/bin/bash
apt-get update
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    openssh-server \
    xorg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# allow root user to display gui on desktop(for gui in docker container)
echo "xhost +local:root" >> ~/.bashrc

# allow every user to display gui on desktop(for gui in docker container)
# echo "xhost +SI:localuser:root" >> ~/.bashrc
# run the following to remove the access, in order to stay safe
# xhost -local:root

systemctl enable docker

