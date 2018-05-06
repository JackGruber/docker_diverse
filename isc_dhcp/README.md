# Docker DHCP Server
Docker ISC DHCP Server on Alpine 

## Build docker image
```
docker build -t dhcpd .
```



## Run docker container
```
docker run -d --name dhcpd --network host \
-v /opt/dhcpd/dhcpd.conf:/etc/dhcp/dhcpd.conf:ro dhcpd
```
