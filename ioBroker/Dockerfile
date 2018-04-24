FROM resin/raspberrypi3-node:8

ENV IOBROKERDIR /opt/iobroker

RUN apt-get update && apt-get install \
    build-essential \
    git \
    python

###########################################################################
# Inst npm
RUN npm install -g npm@5.7.1

###########################################################################
# Install ioBroker
RUN mkdir -p $IOBROKERDIR
WORKDIR $IOBROKERDIR
RUN npm install iobroker --unsafe-perm

###########################################################################
# Install adapters
WORKDIR /opt/scripts/
COPY adapters2install.txt /scripts/install_adapter.sh /opt/scripts/
RUN chmod +x install_adapter.sh \
    && ./install_adapter.sh

###########################################################################
# Copy start script
COPY scripts/start_iobroker.sh start_iobroker.sh
RUN chmod +x start_iobroker.sh

###########################################################################
# Timezone
ENV TZ Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


EXPOSE 1883/tcp \
       2001/tcp \
       8081/tcp \
       8082/tcp
CMD ["sh", "/opt/scripts/start_iobroker.sh"]
