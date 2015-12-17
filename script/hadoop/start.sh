#!/usr/bin/env bash

echo "start hadoop as daemon"

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

${SCRIPTPATH}/config.sh
hadoop-2.7.1/sbin/start-dfs.sh

# TODO: use jps to check if everything is running

# go back to the old working directory
cd ${ORIGINAL_WD}
