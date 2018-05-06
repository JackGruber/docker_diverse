# Docker image for unbound DNS Server
unbound DNS Server based on alpine for Raspberry Pi

## Build docker image
```
docker build -t unbound_dns .
```

## Run unbound container
```
docker run -d -p 53:53/udp -p 53:53/tcp --name dns \
-v /opt/dns/unbound.conf:/etc/unbound/unbound.conf:ro unbound_dns
```

```
docker run -d -p 53:53/udp -p 53:53/tcp --name dns \
-v /opt/dns/:/etc/unbound/:ro unbound_dns
```

## Links
[Calomel Unbound DNS Tutorial](https://calomel.org/unbound_dns.html)

[unbound man](https://linux.die.net/man/5/unbound.conf)
