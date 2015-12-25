#!/usr/bin/env bash

# config
# use environment variable to override it http://stackoverflow.com/questions/307503/whats-the-best-way-to-check-that-environment-variables-are-set-in-unix-shellscr
${KAFKA_DOWNLOAD:=http://mirror.bit.edu.cn/apache/kafka/0.9.0.0/kafka_2.11-0.9.0.0.tgz}

echo ${KAFKA_DOWNLOAD}

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
if [ -f kafka_2.11-0.9.0.0.tgz ]; then
    echo "file already exist"
else
    echo "start downloading from ${KAFKA_DOWNLOAD}"
    wget ${KAFKA_DOWNLOAD}
fi

# go back to the old working directory
cd ${ORIGINAL_WD}