FROM teddysun/xray:latest

COPY config.json /etc/xray/config.json

EXPOSE 8080

ENTRYPOINT ["/usr/bin/xray", "-config", "/etc/xray/config.json"]
