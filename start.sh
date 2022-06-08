#!/usr/bin/env bash
set -e

NETWORK="hadoop_test"

docker network create "$NETWORK"

docker run -d --network "$NETWORK" \
  --name namenode1 \
  --hostname namenode-master \
  -p 9870:9870 -p 8020:8020 -p 50030:50030 \
  custom-hadoop-namenode

docker run -d --network "$NETWORK" \
  --name datanode1 \
  custom-hadoop-datanode
