FROM ubuntu:14.04

MAINTAINER Carlo Eugster <carlo@relaun.ch>

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -m -d /opt/factorio -s /bin/bash factorio \
  && chown -R factorio.factorio /opt/factorio
USER factorio

ENV HOME /opt/factorio
ENV SAVEFILE /opt/factorio/saves/factorio_save.zip

WORKDIR /opt/factorio

RUN  wget -q -O - https://www.factorio.com/download-headless/stable | grep -o -m1 "/get-download/.*/headless/linux64" | awk '{print "--no-check-certificate https://www.factorio.com"$1" -O /tmp/factorio.tar.gz"}' | xargs wget \
  && tar -xzf /tmp/factorio.tar.gz -C /opt \
  && rm -rf /tmp/factorio.tar.gz

ADD  init.sh /opt/factorio/
ADD server-settings.example.json /opt/factorio/data/

EXPOSE 34197/udp
CMD ["./init.sh"]
