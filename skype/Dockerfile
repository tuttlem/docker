FROM debian:jessie
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 && \
	apt-get update && apt-get install -y curl --no-install-recommends

RUN curl http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb > /usr/src/skype.deb && \ 
	dpkg --force-depends -i /usr/src/skype.deb && \
	apt-get install -fy && \
	rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["skype"]