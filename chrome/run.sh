#!/bin/bash

xhost +local:

CHROME_RUNNING=$(docker inspect --format="{{ .State.Running }}" chrome 2> /dev/null)

if [ $? -eq 1 ]; then
    docker run -it \
           --net host \
           --cpuset-cpus 0 \
           --memory 512mb \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           -e DISPLAY=unix$DISPLAY \
           -v $HOME/Downloads:/root/Downloads \
           -v $HOME/.config/google-chrome/:/data \
           --device /dev/snd \
           -v /dev/shm:/dev/shm \
           --name chrome \
           tuttlem/chrome
fi

if [ "$CHROME_RUNNING" == "false" ]; then
  docker start chrome
fi
