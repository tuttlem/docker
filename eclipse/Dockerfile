FROM java:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN apt-get update && \
    apt-get install -y wget sudo libswt-gtk-3-jni libswt-gtk-3-java && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://download.eclipse.org/technology/epp/downloads/release/luna/R/eclipse-jee-luna-R-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
    tar -xf /tmp/eclipse.tar.gz -C /opt && \
    rm /tmp/eclipse.tar.gz

RUN adduser --disabled-password --gecos '' michael && \
    adduser michael sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/michael
ENV HOME /home/michael
VOLUME ["/home/michael"]

USER michael
CMD /opt/eclipse/eclipse
