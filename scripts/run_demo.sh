#!/usr/bin/env bash
# simple helper to run the demo via Docker
set -e
IMAGE="ghcr.io/youruser/my-ros-demo:latest"

docker run --rm -it \
  --network host \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  $IMAGE \
  bash -c "source /opt/ros/humble/setup.bash && ros2 launch demo_launch.py"
