#!/bin/ash

sysctl -w net.core.somaxconn=65535

/usr/local/bin/redis-cluster-proxy  --port $PORT --bind 0.0.0.0 $CLUSTER_ADDRESS