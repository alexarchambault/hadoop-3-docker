#!/usr/bin/env bash
set -eu

cat > "$HADOOP_HOME/etc/hadoop/core-site.xml" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<!--
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License. See accompanying LICENSE file.
-->

<!-- Put site-specific property overrides in this file. -->

<configuration>
<property>
	<name>fs.defaultFS</name>
  <!-- IF YOU CHANGE THIS HERE BE SURE TO CHANGE IT IN SCRIPTS WHERE YOU START DOCKER CONTAINER AND SPECIFY HOST -->
  <!-- hdfs/namenode/run.sh -->
	<value>hdfs://namenode-master:8020</value>
  <description>
    hdfs://host:port
    URI of namenode. need for datanodes to connect to namenode.
    hostname is required, IP won't work, spent 3hrs before figuring this out.
    ADD SAME HOST AS THE MACHINE WHERE YOU ARE RUNNING YOUR NAMENODE
    DEFAULT PORT IS 8020
  </description>
</property>
</configuration>
EOF


cat > "$HADOOP_HOME/etc/hadoop/hadoop-env.sh" << EOF
JAVA_HOME=$JAVA_HOME
export HADOOP_OS_TYPE=$(uname -s)
EOF

