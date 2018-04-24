#!/bin/sh

cd /opt/iobroker

#CMD=""
#if [ "$1" = "autostart" ]; then
  echo "Setup ..."
  ./iobroker setup
  echo "Start ..."
#else
#  CMD=$*
#fi
exec node /opt/iobroker/node_modules/iobroker.js-controller/controller.js
