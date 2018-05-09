# Docker image for Radicale 
Radicale CalDav / CardDav Server

## Build image
```
docker build -t radicale .
```

## Run radicale container
```
docker run --name radicale -d -p 5232:5232 \
-v /opt/radicale/conf:/etc/radicale \
-v /opt/radicale/data:/var/lib/radicale \
--config /etc/radicale/radicale.config
```

## Links
[Radicale](https://github.com/Kozea/Radicale)
