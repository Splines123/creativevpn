FROM v2fly/v2fly-core:latest

RUN mkdir -p /etc/v2ray

COPY config.json /etc/v2ray/config.json

EXPOSE 8080

ENTRYPOINT ["v2ray", "run", "-config=/etc/v2ray/config.json"]
