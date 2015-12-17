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

if [ -d "hadoop-2.7.1" ];then
  echo "hadoop already extracted"
else
  echo "extracting hadoop tarball"
  tar zxf ../tarball/hadoop-2.7.1.tar.gz -C .
  echo "extracted"
fi
