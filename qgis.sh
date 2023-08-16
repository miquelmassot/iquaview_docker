#!/bin/bash

docker run -it --rm --name qgis \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /home/$USER:/home/$USER \
    -e QT_X11_NO_MITSHM=1 \
    -e XAUTHORITY=/tmp/.docker.xauth \
    -v $XAUTHORITY:/tmp/.docker.xauth \
    -v /etc/passwd:/etc/passwd:ro \
    -e DISPLAY=$DISPLAY \
    --net=host \
    -h $HOSTNAME  \
    --user $(id -u):$(id -g) \
    -v /etc/passwd:/etc/passwd:ro  \
    -v /etc/group:/etc/group:ro \
    --privileged \
    ghcr.io/ocean-perception/qgis:latest qgis
 