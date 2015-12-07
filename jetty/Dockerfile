FROM java
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ADD jetty-distribution-9.3.6.v20151106.tar.gz /opt/

ENV JETTY_HOME=/opt/jetty-distribution-9.3.6.v20151106/
ENV JETTY_BASE=/opt/base/

VOLUME /opt/base
WORKDIR /opt/base

CMD [ "sh", "-c", "java -jar $JETTY_HOME/start.jar" ]
