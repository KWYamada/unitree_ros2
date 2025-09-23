#!/bin/bash
echo "Setup unitree ros2 simulation environment"
source /opt/ros/jazzy/setup.bash
source /workspace/install/setup.bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI=file:///workspace/config/cyclonedds.peers.xml


