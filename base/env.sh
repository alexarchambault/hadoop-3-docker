#!/usr/bin/env bash
set -e

eval "$(cs java --env --jvm 8)"

export HADOOP_HOME="/opt/hadoop"
export PATH="$HADOOP_HOME/bin:$PATH"

exec "$@"
