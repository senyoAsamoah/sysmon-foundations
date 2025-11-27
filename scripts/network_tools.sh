#!/bin/bash

COMMAND=$1
TARGET=$2

case "$COMMAND" in
  ping)
    ping -c 4 "$TARGET"
    ;;
  dns)
    dig "$TARGET"
    ;;
  trace)
    traceroute "$TARGET"
    ;;
  ports)
    sudo ss -tulnp
    ;;
  *)
    echo "Usage: $0 {ping|dns|trace|ports} target"
    ;;
esac
