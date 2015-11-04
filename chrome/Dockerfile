
FROM debian:sid
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

# ADD https://dl.google.com/linux/direct/google-talkplugin_current_amd64.deb /src/google-talkplugin_current_amd64.deb
# ADD https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /src/google-chrome-stable_current_amd64.deb

ADD google-talkplugin_current_amd64.deb /src/google-talkplugin_current_amd64.deb
ADD google-chrome-stable_current_amd64.deb /src/google-chrome-stable_current_amd64.deb

# Install Chromium
RUN mkdir -p /usr/share/icons/hicolor && \
    apt-get update && apt-get install -y \
            ca-certificates gconf-service hicolor-icon-theme libappindicator1 libasound2 \
            libcanberra-gtk-module libcurl3 libexif-dev libgconf-2-4 libgl1-mesa-dri \
            libgl1-mesa-glx libnspr4 libnss3 libpango1.0-0 libv4l-0 libxss1 libxtst6 \
            wget xdg-utils --no-install-recommends && \
    dpkg -i '/src/google-chrome-stable_current_amd64.deb' && \
    dpkg -i '/src/google-talkplugin_current_amd64.deb'

# Install java
# RUN apt-get install -y icedtea-7-plugin

# clean up the apt cache
RUN rm -rf /var/lib/apt/lists/* && \
    rm -rf /src/*.deb

COPY local.conf /etc/fonts/local.conf

# Re-enable java (https://java.com/en/download/help/enable_browser_ubuntu.xml)
# RUN mkdir -p /opt/google/chrome/plugins && \
#    cd /opt/google/chrome/plugins && \
#    ln -s /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/libnpt.so

# Autorun chrome
ENTRYPOINT [ "/usr/bin/google-chrome" ]
CMD [ "--user-data-dir=/data" ]
