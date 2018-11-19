FROM alpine:3.8
RUN apk update && \
    apk add ansible curl openssh-client bash git
ADD prom-run /
ENTRYPOINT /prom-run
