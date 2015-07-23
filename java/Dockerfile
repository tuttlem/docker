FROM java:8
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN apt-get update && \
    apt-get install -y sudo wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 
# Install the maven build tool
#

WORKDIR /root
RUN wget http://mirror.ventraip.net.au/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz && \
    tar xzvf apache-maven-3.3.3-bin.tar.gz && \
    rm apache-maven-3.3.3-bin.tar.gz && \
    mv apache-maven-3.3.3 /opt && \
    ln -s /opt/apache-maven-3.3.3/bin/mvn /usr/local/bin/mvn


RUN adduser --disabled-password --gecos '' michael && \
    adduser michael sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/michael
ENV HOME /home/michael
VOLUME ["/home/michael"]

USER michael
