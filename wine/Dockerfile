FROM ubuntu

RUN dpkg --add-architecture i386
RUN apt-get update 
RUN apt-get install -y wine1.6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV DISPLAY :0

