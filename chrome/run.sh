#!/bin/bash

xhost +local:

CHROME_RUNNING=$(docker inspect --format="{{ .State.Running }}" chrome 2> /dev/null)

if [ $? -eq 1 ]; then
    docker run \
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

else

  if [ "$CHROME_RUNNING" == "false" ]; then
    docker start chrome
  else
    # run a new instance if it's already running (should just be a new window)
    # note that the --user-data-dir switch must align with the config data that we have mounted
    # in the run command
    docker exec chrome sh -c "/usr/bin/google-chrome '$@' --user-data-dir=/data"
  fi

fi

