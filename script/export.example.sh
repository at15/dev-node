#!/usr/bin/env bash

# this will add all the app's bin & sbin folder to PATH

# TODO: change the path to yours
export HADOOP_HOME=/home/at15/workspace/src/github.com/at15/dev-node/app/hadoop-2.7.1
export HIVE_HOME=/home/at15/workspace/src/github.com/at15/dev-node/app/apache-hive-1.2.1-bin

export PATH=${HADOOP_HOME}/bin:$PATH
export PATH=${HIVE_HOME}/bin:$PATH