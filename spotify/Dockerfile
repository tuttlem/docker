
FROM ubuntu:14.04
MAINTAINER Michael Tuttle <tuttlem@gmail.com>

RUN apt-get update && apt-get install -y \
  libpangoxft-1.0-0 \
  alsa-utils \
  software-properties-common \
  --no-install-recommends && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59 && \
  echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list && \
  apt-get update && \
  apt-get install --force-yes -y \
  spotify-client \
  && rm -rf /var/lib/apt/lists/*

ENV HOME /home/spotify
RUN useradd --create-home --home-dir $HOME spotify \
  && gpasswd -a spotify audio \
  && chown -R spotify:spotify $HOME

WORKDIR $HOME
USER spotify

# make search bar text better
RUN echo "QLineEdit { color: #000 }" > /home/spotify/spotify-override.css

ENTRYPOINT  [ "spotify" ]
CMD [ "-stylesheet=/home/spotify/spotify-override.css" ]
