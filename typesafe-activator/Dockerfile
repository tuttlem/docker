FROM java:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ADD http://downloads.typesafe.com/typesafe-activator/1.3.7/typesafe-activator-1.3.7.zip /usr/local/share/typesafe-activator-1.3.7.zip
# ADD typesafe-activator-1.3.7.zip /usr/local/share/typesafe-activator-1.3.7.zip

WORKDIR /usr/local/share
RUN unzip typesafe-activator-1.3.7.zip && \
    rm typesafe-activator-1.3.7.zip

ENV PATH $PATH:/usr/local/share/activator-dist-1.3.7

VOLUME /usr/src/app
WORKDIR /usr/src/app


