
FROM python:3
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# pygame system dependencies
RUN apt-get update && \
    apt-get install -y mercurial python3-dev python3-numpy libav-tools \
    libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev \
    libsdl1.2-dev  libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /usr/src
WORKDIR /usr/src

# Grab source
RUN hg clone https://bitbucket.org/pygame/pygame

WORKDIR /usr/src/pygame
RUN python setup.py build

