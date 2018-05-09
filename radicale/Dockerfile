FROM alpine:latest

# Version of Radicale (e.g. 2.0.0)
ARG VERSION=master

# Install dependencies
RUN apk add --no-cache --virtual .build-deps \
    python3-dev \
    build-base \
    libffi-dev \
    && apk add --no-cache \
    python3 \
    ca-certificates \
    openssl

# Install Radicale
RUN wget --quiet https://github.com/Kozea/Radicale/archive/${VERSION}.tar.gz --output-document=radicale.tar.gz && \
    tar xzf radicale.tar.gz && \
    pip3 install ./Radicale-${VERSION}[md5,bcrypt] && \
    rm -r radicale.tar.gz Radicale-${VERSION}

# Install dependencies for Radicale<2.1.9
RUN pip3 install passlib[bcrypt]

# Remove build dependencies
RUN apk del .build-deps

# Persistent storage for data (Mount it somewhere on the host!)
VOLUME /var/lib/radicale

# Configuration data (Put the "config" file here!)
VOLUME /etc/radicale

# TCP port of Radicale (Publish it on a host interface!)
EXPOSE 5232

# You can run radicale with every commandline parameter
# Example for --config: docker run radicale -d -p 5232:5232 --config /etc/radicale/radicale.config
ENTRYPOINT ["radicale"]
CMD ["--hosts", "0.0.0.0:5232"]
