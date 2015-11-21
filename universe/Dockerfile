FROM centos:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# add the universe personal edition tar to the temp
# folder to install from 
ADD uvpe-linux-x64-11.2.5.tar.gz /tmp

RUN yum install ed -y

# -------------------------------------------------------------------------------
# Due to an installation process that can't run non-interactivly the following
# comment out steps need to be performed manually inside a version of the image
# build up to this point.
#
# After the following steps have been performed, we commit those changes to the 
# running container with the following
#
# $ docker commit id-of-container-you-did-your-build-in tuttlem/uv:11.2.5
# -------------------------------------------------------------------------------

# extract the installer script
# WORKDIR /tmp/uvpe-linux-x64-11.2.5
# RUN cpio -ivcBdum uv.load < ./STARTUP
# RUN ./uv.load

# demo licence universe
# WORKDIR /usr/uv
# RUN bin/uvregen -s 12345678 -e 1/1/2500 -u 25 -p CONNPL:5,UVNET:9999 -d 10

# restart the universe daemon
# RUN bin/uv -admin -stop &&
#     bin/uv -admin -start

