FROM java:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ADD http://downloads.typesafe.com/scala/2.11.7/scala-2.11.7.tgz /usr/local/share/scala-2.11.7.tgz

WORKDIR /usr/local/share
RUN  tar -zxvf scala-2.11.7.tgz && \
     rm scala-2.11.7.tgz

VOLUME /usr/src/app
WORKDIR /usr/src/app

ENV PATH $PATH:/usr/local/share/scala-2.11.7/bin
ENV SCALA_HOME /usr/local/share/scala-2.11.7
