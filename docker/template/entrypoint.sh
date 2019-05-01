#!/bin/bash
set -e
# setup ros environment
# source "/opt/ros/$ROS_DISTRO/setup.bash"
source /home/docker/miniconda3/etc/profile.d/conda.sh
exec "$@"