#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

docker build -t custom-hadoop-namenode .
