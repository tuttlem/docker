FROM java:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN apt-get update && \
    apt-get install -y wget libswt-gtk-3-jni libswt-gtk-3-java && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ADD http://mirror.internode.on.net/pub/eclipse/technology/epp/downloads/release/mars/1/eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz /tmp/eclipse
ADD eclipse-jee-mars-1-linux-gtk-x86_64.tar.gz /opt

WORKDIR /src/workspace
VOLUME ["/src/workspace"]
CMD /opt/eclipse/eclipse
