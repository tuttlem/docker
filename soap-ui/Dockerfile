FROM java
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# ADD http://apache.uberglobalmirror.com/jmeter/binaries/apache-jmeter-2.13.tgz /opt
ADD SoapUI-x64-5.2.1.sh /tmp/SoapUI-x64-5.2.1.sh

VOLUME /opt/projects
WORKDIR /opt/projects

RUN "/tmp/SoapUI-x64-5.2.1.sh"