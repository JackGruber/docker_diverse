FROM alpine

RUN apk update \
    && apk add --no-cache \
    dhcp

RUN ["touch", "/var/lib/dhcp/dhcpd.leases"]

VOLUME ["/etc/dhcp"]

EXPOSE 67/udp 67/tcp

CMD ["/usr/sbin/dhcpd", "-4", "-f", "-d", "--no-pid", "-cf", "/etc/dhcp/dhcpd.conf", "eth0"]
