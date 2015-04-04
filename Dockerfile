FROM ubuntu:trusty
MAINTAINER Chad Schmutzer <schmutze@amazon.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q update && \
  apt-get -y -q dist-upgrade && \
  apt-get -y -q install rsyslog python-setuptools python-pip curl groff

RUN pip install awscli

#ENTRYPOINT ["aws"]
