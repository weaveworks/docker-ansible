FROM alpine:3.8
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main">>/etc/apk/repositories && \
    apk add --no-cache ansible@edge curl openssh-client bash git
ADD prom-run /
ENTRYPOINT /prom-run
