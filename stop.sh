#!/usr/bin/env bash
set -e

NETWORK="hadoop_test"

docker rm -f datanode1
docker rm -f namenode1

docker network rm "$NETWORK"
