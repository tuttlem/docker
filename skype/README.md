# Dockerized Skype

```
docker run -v /tmp/.X11-unix:/tmp/.X11-unix \
		   -e DISPLAY=unix$DISPLAY \
		   --link pulseaudio:pulseaudio \
		   -e PULSE_SERVER=pulseaudio \
		   --device /dev/video0 \
		   tuttlem/skype
```