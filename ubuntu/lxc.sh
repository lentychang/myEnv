#!/bin/bash
# install lxd
apt install lxd lxd-client
echo "root:1000000:65536" | tee -a /etc/subuid /etc/subgid
lxd init
# remember to use ZFS, it is faster.
lxc profile create gui
cat settings/lxdguiprofile.txt | lxc profile edit gui
echo "root:$UID:1" | sudo tee -a /etc/subuid /etc/subgid


# usage of gui lxd container
# lxc launch --profile default --profile gui ubuntu:18.04 gui1804

# mount directory
https://www.cyberciti.biz/faq/how-to-add-or-mount-directory-in-lxd-linux-container/
