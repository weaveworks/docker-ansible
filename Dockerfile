FROM alpine:3.4
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main">>/etc/apk/repositories && \
    apk update && \
    apk add ansible@edge curl
ADD prom-run /