#!/usr/bin/env bash

# config
# TODO: use environment variable to override it
HADOOP_DOWNLOAD=http://mirrors.cnnic.cn/apache/hadoop/common/stable/hadoop-2.7.1.tar.gz

# get the script path http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
# get current working directory
ORIGINAL_WD=${PWD}
# switch to script directory
cd ${SCRIPTPATH}
# switch to tarball directory
cd ../../tarball
# if we already have one, then we won't download it
if [ -f hadoop-2.7.1.tar.gz ]; then
    echo "file already exist"
else
    echo "start downloading from ${HADOOP_DOWNLOAD}"
    wget ${HADOOP_DOWNLOAD}
fi

#echo ${SCRIPTPATH}
#echo ${ORIGINAL_WD}
#echo ${PWD}

cd ${ORIGINAL_WD}
echo ${PWD}