FROM gcc:latest
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# the autogen.sh script requires unzip
RUN apt-get update && \
    apt-get install -y unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# grab the source and do the installation
RUN mkdir -p /usr/local/src/ && \
    cd /usr/local/src/ && \
    git clone https://github.com/google/protobuf && \
    cd protobuf && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make check && \
    make install


