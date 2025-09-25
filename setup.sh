#!/bin/bash
echo "Setup unitree ros2 environment"
SCRIPT_DIR=$(dirname "$(realpath "$BASH_SOURCE")")
source /opt/ros/humble/setup.bash
source $SCRIPT_DIR/cyclonedds_ws/install/setup.bash
source $SCRIPT_DIR/unitree_ros2_ws/install/setup.bash
export ROS_DOMAIN_ID=0
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name="wlo1" priority="default" multicast="default" />
                        </Interfaces></General></Domain></CycloneDDS>'
