FROM java:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ENV TSA_VERSION 1.3.7

ADD http://downloads.typesafe.com/typesafe-activator/$TSA_VERSION/typesafe-activator-$TSA_VERSION.zip /usr/local/share/typesafe-activator-$TSA_VERSION.zip

WORKDIR /usr/local/share
RUN unzip typesafe-activator-$TSA_VERSION.zip && \
    rm typesafe-activator-$TSA_VERSION.zip

ENV PATH $PATH:/usr/local/share/activator-dist-$TSA_VERSION

VOLUME /usr/src/app
WORKDIR /usr/src/app


