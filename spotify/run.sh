#!/bin/bash

SPOTIFY_RUNNING=$(docker inspect --format="{{ .State.Running }}" spotify 2> /dev/null)

if [ $? -eq 1 ]; then
  docker run -d \
             -v /etc/localtime:/etc/localtime:ro \
             -v /tmp/.X11-unix:/tmp/.X11-unix \
             -e DISPLAY=unix$DISPLAY \
             --device /dev/snd \
             --name spotify \
             tuttlem/spotify
fi

if [ "$SPOTIFY_RUNNING" == "false" ]; then
  xhost +local: 
  docker start spotify
fi
