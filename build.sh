#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

base/build.sh
namenode/build.sh
datanode/build.sh
