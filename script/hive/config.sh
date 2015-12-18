#!/usr/bin/env bash

echo "config hive"

# get the script path http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
# get current working directory
ORIGINAL_WD=${PWD}
# switch to script directory
cd ${SCRIPTPATH}

# copy all the config for hive
cp ../../config/hive/hive-site.xml ../../app/apache-hive-1.2.1-bin/conf

# go back to the old working directory
cd ${ORIGINAL_WD}