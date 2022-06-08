#!/usr/bin/env bash
set -e

hadoop fs -ls /inputs || (
  hadoop fs -mkdir /inputs/
  hadoop fs -copyFromLocal ./input/* /inputs/
  hadoop fs -ls /inputs/
)

scala-cli package --library WordCount.java -o WordCount.jar --jvm 8 -f

hadoop fs -rm -r /output
hadoop jar WordCount.jar WordCount /inputs /output

hadoop fs -ls /output
hadoop fs -cat "/output/*"
