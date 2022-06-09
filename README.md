# hadoop-3-docker

Docker images to run a Hadoop 3 cluster in docker

## How to build

Build the images locally with

```text
$ ./build.sh
```

## How to use

Start a cluster with
```text
$ ./start.sh
```

Run a word count job with
```text
$ ./test-job/run-job.sh
```

Stop the cluster with
```text
$ ./stop.sh
```

## Notes

Inspired by https://selectfrom.dev/how-to-setup-simple-hadoop-cluster-on-docker-5d8f56013f29
