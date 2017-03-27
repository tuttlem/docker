FROM python:3

RUN apt-get update && \
  	apt-get install -y python-dev python-setuptools && \
  	apt-get clean && \
  	rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN easy_install pip

#
# Install nltk into the container
# 

RUN pip install nltk

#
# Bootstrap the machine learning database by downloading the 
# all package in the nltk corpus
#

# RUN python -m nltk.downloader all

#
# Add a pre-downloaded copy of the data directly into the 
# container 
#

ADD nltk_data /root/nltk_data
