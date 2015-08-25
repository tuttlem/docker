
FROM python:2.7
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# opencv system dependencies
RUN apt-get update && \
    apt-get install -y unzip sudo cmake libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev libamd2.3.1 libblas3gf libc6 libgcc1 libgfortran3 liblapack3gf libumfpack5.6.2 libstdc++6 build-essential gfortran libatlas-dev libatlas3-base libblas-dev liblapack-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# opencv python dependencies
RUN pip install --upgrade pip && \
    pip install virtualenv && \
    pip install numpy && \
    pip install scipy

# build and install opencv
ADD 3.0.0.zip /tmp/3.0.0.zip
WORKDIR /tmp
RUN unzip 3.0.0.zip && \
    cd opencv-3.0.0 && \
    mkdir release && \
    cd release && \
    cmake -D MAKE_BUILD_TYPE=RELEASE \
          -D PYTHON2_EXECUTABLE=/usr/local/bin/python \
          -D PYTHON_INCLUDE_DIR=/usr/local/include/python2.7 \
          -D PYTHON_LIBRARY=/usr/local/lib/libpython2.7.so \
          -D PYTHON2_NUMPY_INCLUDE_DIRS=/usr/local/lib/python2.7/site-packages/numpy/core/include .. && \
    make -j8 && \
    make install

RUN adduser --disabled-password --gecos '' michael && \
    adduser michael sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /home/michael
ENV HOME /home/michael
VOLUME ["/home/michael"]

USER michael

