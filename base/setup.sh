#!/usr/bin/env bash
set -e

apt-get update
apt-get install -y curl
rm -rf /var/lib/apt/lists/*

curl -fL https://github.com/coursier/coursier/releases/download/v2.1.0-M6/cs-x86_64-pc-linux.gz | gzip -d > /usr/local/bin/cs
chmod +x /usr/local/bin/cs

curl -fL https://github.com/VirtusLab/scala-cli/releases/download/v0.1.7/scala-cli-x86_64-pc-linux.gz | gzip -d > /usr/local/bin/scala-cli
chmod +x /usr/local/bin/scala-cli

eval "$(cs java --env --jvm 8)"

mkdir -p /opt
cd /opt
tar -zxf "$(cs get https://dlcdn.apache.org/hadoop/common/hadoop-3.3.3/hadoop-3.3.3.tar.gz)"

ln -s hadoop-* hadoop
