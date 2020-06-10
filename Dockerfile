FROM debian:stretch

ENV         DEBIAN_FRONTEND noninteractive

MAINTAINER Michael Friebe, <michael@friebe.it>
RUN apt-get update \
 && apt-get -y install lib32gcc1 libvorbisfile3 \
 && useradd -m -d /home/container container

USER container
ENV USER container
ENV HOME /home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
