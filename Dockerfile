FROM alpine:3.10
RUN apk add --no-cache ansible curl openssh-client bash git
ADD prom-run /
ENTRYPOINT /prom-run
