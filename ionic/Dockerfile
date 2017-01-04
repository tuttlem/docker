FROM node:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN useradd -mUd /home/ionic ionic
RUN chown -Rh ionic /usr/local

USER ionic

RUN npm install -g cordova ionic
