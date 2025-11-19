FROM v2fly/v2fly-core:latest

# create config dir
RUN mkdir -p /etc/v2ray

COPY config.json /etc/v2ray/config.json

EXPOSE 8080

ENTRYPOINT ["/usr/bin/v2ray", "-config=/etc/v2ray/config.json"]
