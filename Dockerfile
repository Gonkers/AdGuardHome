FROM adguard/adguardhome:latest

RUN apk add unbound
COPY --chown=nobody:nobody ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /
ENTRYPOINT ["/entrypoint.sh"]