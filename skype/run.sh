#!/bin/bash

function ensure_pulse_audio {

	# determine if pulse audio is running
	PULSEAUDIO_RUNNING=$(docker inspect --format="{{ .State.Running }}" pulseaudio 2> /dev/null)

	if [ $? -eq 1 ]; then
		docker run  -d \
					--name skype \
					-v /etc/localtime:/etc/localtime:ro \
					--device /dev/snd \
					--name pulseaudio \
					-p 4713:4713 \
					-v /var/run/dbus:/var/run/dbus \
					-v /etc/machine-id:/etc/machine-id \
					tuttlem/pulseaudio	
	fi

	if [ "$PULSEAUDIO_RUNNING" == "false" ]; then
		docker start pulseaudio
	fi

}

function ensure_skype {

	# determine if pulse audio is running
	SKYPE_RUNNING=$(docker inspect --format="{{ .State.Running }}" skype 2> /dev/null)

	if [ $? -eq 1 ]; then
		docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
				   -e DISPLAY=unix$DISPLAY \
				   --link pulseaudio:pulseaudio \
				   -e PULSE_SERVER=pulseaudio \
				   --device /dev/video0 \
				   tuttlem/skype
	fi

	if [ "$SKYPE_RUNNING" == "false" ]; then
		docker start skype
	fi

}

ensure_pulse_audio
ensure_skype