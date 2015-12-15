#!/usr/bin/env bash

# config
# use environment variable to override it http://stackoverflow.com/questions/307503/whats-the-best-way-to-check-that-environment-variables-are-set-in-unix-shellscr
${HADOOP_DOWNLOAD:=http://mirrors.cnnic.cn/apache/hadoop/common/stable/hadoop-2.7.1.tar.gz}

echo ${HADOOP_DOWNLOAD}

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

# go back to the old working directory
cd ${ORIGINAL_WD}
