FROM alpine

LABEL \
  "name"="GitHub Pull Request Action" \

RUN echo https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
  apk add --no-cache git hub bash

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
