FROM python:3
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN apt-get update && \
    apt-get install -y sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip && \
    pip install virtualenv

RUN adduser --disabled-password --gecos '' michael && \
    adduser michael sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/michael
ENV HOME /home/michael
VOLUME ["/home/michael"]

USER michael
