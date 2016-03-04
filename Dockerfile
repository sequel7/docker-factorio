FROM ubuntu:14.04

MAINTAINER Carlo Eugster <carlo@relaun.ch>

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN  wget --no-check-certificate https://www.factorio.com/get-download/0.12.24/headless/linux64 -O /tmp/factorio.tar.gz \
  && tar -xzf /tmp/factorio.tar.gz -C /opt \
  && rm -rf /tmp/factorio.tar.gz

ADD  init.sh /opt/factorio/

WORKDIR /opt/factorio
CMD ["./init.sh"]
