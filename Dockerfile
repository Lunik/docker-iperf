FROM alpine:latest

MAINTAINER Guillaume Martinez <guillaume.lunik@gmail.com>

# Install iperf binary
RUN apk --update --no-cache add iperf

# Expose default iperf port

EXPOSE 5001

ENTRYPOINT ["iperf"]

CMD ["-s"]