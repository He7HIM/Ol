FROM teddysun/v2ray:latest

# Expose the correct port used in config.json
EXPOSE 443

# Copy config and certificates
COPY config.json /etc/v2ray/config.json
COPY fullchain.crt /etc/v2ray/fullchain.crt
COPY private.key /etc/v2ray/private.key

# Run V2Ray with the config file
CMD ["v2ray", "-config", "/etc/v2ray/config.json"]
