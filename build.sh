#! /bin/bash

DEVICE=${1:-"cpu"}

if [ "$DEVICE" = "cpu" ] ; then
  echo "Building sawyer-ros-docker with cpu..." ;
  docker build -f ./Dockerfile.cpu \
    -t sawyer-ros-py2-docker:cpu . ;
else
  echo "Building sawyer-ros-docker with gpu..." ;
  docker build -f ./Dockerfile.gpu \
    -t sawyer-ros-py2-docker:gpu . ;
fi
