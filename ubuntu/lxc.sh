#!/bin/bash
# install lxd
apt install lxd lxd-client
echo "root:1000000:65536" | tee -a /etc/subuid /etc/subgid
lxd init
# remember to use ZFS, it is faster.