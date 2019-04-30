#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
export PATH=/home/lenty/miniconda/bin:$PATH
. /home/lenty/miniconda/etc/profile.d/conda.sh
source activate pcl
exec "$@"