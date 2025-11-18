FROM v2fly/v2fly-core:latest

# create config dir
RUN mkdir -p /etc/xray

COPY config.json /etc/xray/config.json

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/xray", "-config", "/etc/xray/config.json"]

