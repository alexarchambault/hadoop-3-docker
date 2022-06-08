#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

NETWORK="hadoop_test"

docker run -it --rm --network "$NETWORK" \
  -v "$(pwd):/data" -w /data custom-hadoop-base \
  /env.sh ./image-run-job.sh
