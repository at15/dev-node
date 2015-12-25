#!/usr/bin/env bash

# extract the tarball and copy the config, format the name node

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

if [ -d "kafka_2.11-0.9.0.0" ];then
  echo "kafka already extracted"
else
  echo "extracting hadoop tarball"
  tar zxf ../tarball/kafka_2.11-0.9.0.0.tgz -C .
  echo "extracted"
fi

#${SCRIPTPATH}/config.sh
#${SCRIPTPATH}/format.sh

# go back to the old working directory
cd ${ORIGINAL_WD}