#!/bin/sh

docker run  -d \
			--name skype \
			-v /etc/localtime:/etc/localtime:ro \
			--device /dev/snd \
			--name pulseaudio \
			-p 4713:4713 \
			-v /var/run/dbus:/var/run/dbus \
			-v /etc/machine-id:/etc/machine-id \
			tuttlem/pulseaudio
