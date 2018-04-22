FROM alpine

RUN apk update \
    && apk add --no-cache \
    ca-certificates \
    curl \
    unbound \
    && rm -f /var/cache/apk/* \
    && curl -o /etc/unbound/root.hints https://www.internic.net/domain/named.cache

###########################################################################
# Start script
ADD start.sh /bootstrap/
RUN chmod +x /bootstrap/start.sh

RUN ln -sf /proc/1/fd/1 /var/log/unbound.log \
    && chown unbound /var/log/unbound.log

EXPOSE 53/udp 53/tcp 853/tcp

CMD ["/bootstrap/start.sh"]
