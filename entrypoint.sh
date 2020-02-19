#!/bin/bash

export SPARK_HOME=/opt/spark/spark-2.4.4-bin-without-hadoop \
&& export PATH=$PATH:$SPARK_HOME/bin \
&& export HADOOP_HOME=/opt/hadoop/hadoop-2.8.2 \
&& export PATH=$PATH:$HADOOP_HOME/bin \
&& export LD_LIBRARY_PATH=$HADOOP_HOME/lib/native \
&& export SPARK_DIST_CLASSPATH=$(hadoop classpath)

./bin/spark-shell \
--conf spark.hadoop.fs.s3a.endpoint=http://172.19.0.2:9000 \
--conf spark.hadoop.fs.s3a.access.key=minioadmin \
--conf spark.hadoop.fs.s3a.secret.key=minioadmin \
--conf spark.hadoop.fs.s3a.path.style.access=true \
--conf spark.hadoop.fs.s3a.impl=org.apache.hadoop.fs.s3a.S3AFileSystem