# Docker image for ioBroker
Docker image for ioBroker http://www.iobroker.net based on [Resin.io base image](https://docs.resin.io/reference/base-images/resin-base-images/)

## Preparation
Edit `adapters2install.txt` to include all the adapters you need.
These adapters are installed during the build process.

## Build
```
docker build -t iobroker .
```

## Run
```
docker run --name iobroker -d \
-p 8081-8084:8081-8084 \
-p 1883:1883 \
-p 2001:2001 \
-v /opt/iobroker/iobroker.history/:/opt/ioBroker.history/ \
-v /opt/iobroker/iobroker-data/:/opt/iobroker/iobroker-data/ iobroker
```
