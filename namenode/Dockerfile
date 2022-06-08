FROM custom-hadoop-base:latest

RUN mkdir -p /opt/hdfs/namenode

ADD ./hdfs-site.xml /opt/hadoop/etc/hadoop/

RUN /env.sh hdfs namenode -format

CMD /env.sh hdfs namenode
