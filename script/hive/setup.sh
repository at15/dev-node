#!/usr/bin/env bash

# get the script path http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
# get current working directory
ORIGINAL_WD=${PWD}
# switch to script directory
cd ${SCRIPTPATH}
# switch to app directory
cd ../../app

if [ -d "apache-hive-1.2.1-bin" ];then
  echo "hive already extracted"
else
  echo "extracting hive tarball"
  tar zxf ../tarball/apache-hive-1.2.1-bin.tar.gz -C .
  echo "extracted"
fi

source ${SCRIPTPATH}/../export.sh

${HADOOP_HOME}/bin/hadoop fs -mkdir       /tmp
${HADOOP_HOME}/bin/hadoop fs -chmod g+w   /tmp

${HADOOP_HOME}/bin/hdfs dfs -mkdir /user
${HADOOP_HOME}/bin/hdfs dfs -mkdir /user/hive
${HADOOP_HOME}/bin/hdfs dfs -mkdir /user/hive/warehouse

${HADOOP_HOME}/bin/hdfs dfs -chmod g+w /user/hive/warehouse

# go back to the old working directory
cd ${ORIGINAL_WD}