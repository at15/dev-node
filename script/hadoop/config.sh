#!/usr/bin/env bash

# get the script path http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
# get current working directory
ORIGINAL_WD=${PWD}
# switch to script directory
cd ${SCRIPTPATH}

# copy all the config for hadoop
cp ../../config/hadoop/core-site.xml ../../app/hadoop-2.7.1/etc/hadoop
cp ../../config/hadoop/hdfs-site.xml ../../app/hadoop-2.7.1/etc/hadoop
cp ../../config/hadoop/hadoop-env.sh ../../app/hadoop-2.7.1/etc/hadoop

# go back to the old working directory
cd ${ORIGINAL_WD}