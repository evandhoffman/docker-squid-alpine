FROM alpine:3.6

MAINTAINER evandhoffman@gmail.com

RUN apk update \
    && apk add squid=3.5.23-r2 \
    && apk add curl \
    && rm -rf /var/cache/apk/*

COPY start-squid.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/start-squid.sh"]
