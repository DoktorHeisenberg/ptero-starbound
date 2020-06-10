FROM alpine:latest

MAINTAINER Michael Friebe, <michael@friebe.it>
RUN apk update \
 && apk upgrade \
 && adduser -D -h /home/container container

USER container
ENV USER container
ENV HOME /home/container
WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]
