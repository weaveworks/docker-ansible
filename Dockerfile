FROM alpine:3.8
RUN apk add --no-cache ansible curl openssh-client bash git
ADD prom-run /
ENTRYPOINT /prom-run
