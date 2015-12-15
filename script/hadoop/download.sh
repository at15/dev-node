#!/usr/bin/env bash

# get the script path http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

# get current working directory
ORIGINAL_WD=${PWD}

echo ${SCRIPTPATH}
echo ${ORIGINAL_WD}

cd ${SCRIPTPATH}
echo ${PWD}

cd ${ORIGINAL_WD}
echo ${PWD}