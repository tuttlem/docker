FROM java
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN apt-get update && \
    apt-get install -y sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser --disabled-password --gecos '' michael && \
    adduser michael sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENV HOME /home/michael
WORKDIR /home/michael
ADD apache-jmeter-2.13.tgz /home/michael/apache-jmeter
USER michael

CMD "/home/michael/apache-jmeter/apache-jmeter-2.13/bin/jmeter"