FROM java
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

ADD http://cdn01.downloads.smartbear.com/soapui/5.2.1/SoapUI-5.2.1-linux-bin.tar.gz /opt/
# ADD SoapUI-5.2.1-linux-bin.tar.gz /opt/

WORKDIR /opt
RUN tar -zxvf *.tar.gz && \
    rm *.tar.gz

CMD ["/opt/SoapUI-5.2.1/bin/soapui.sh"]