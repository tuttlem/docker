FROM java
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# ADD http://apache.uberglobalmirror.com/jmeter/binaries/apache-jmeter-2.13.tgz /opt
ADD apache-jmeter-2.13.tgz /opt

VOLUME /opt/plans
WORKDIR /opt/plans
CMD "/opt/apache-jmeter-2.13/bin/jmeter"