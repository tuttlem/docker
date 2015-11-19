FROM debian:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ENV DEBIAN_FRONTEND noninteractive  
RUN apt-get update && \
    apt-get install -y unzip sudo libgtk2.0-0 libgconf2-4 libnss3 \  
                       libasound2 libxtst6 libcanberra-gtk-module \
                       libgl1-mesa-glx libc6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD VSCode-linux-x64.tar.gz /opt

RUN adduser --disabled-login --uid 1000 \--gecos 'dummy' dummy
CMD ["sudo","-u","dummy","/opt/VSCode-linux-x64/Code"] 
