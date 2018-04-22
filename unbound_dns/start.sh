#!/bin/sh
echo "==================="
echo "Start unbound"
echo "==================="

unbound-checkconf
unbound -d -v
