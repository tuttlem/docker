FROM node:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# install requirements
RUN apt-get update && \
    apt-get install -y libgtk2.0-0 libnotify-bin libgconf-2-4 libnss3 

# clean up after installation
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
