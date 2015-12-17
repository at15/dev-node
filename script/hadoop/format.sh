#!/usr/bin/env bash

echo "format namenode"

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

hadoop-2.7.1/bin/hdfs namenode -format

# go back to the old working directory
cd ${ORIGINAL_WD}

echo "format namenode finished"