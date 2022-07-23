#!/bin/sh

# echo $(pwd)
# git  pull & sleep 5 >>./log/gitPull_Status$(date "+%Y-%m-%d").log 2>&1
# kill -9 $(ps -ef | grep "git" | awk '{print $1}')
# kill $!
# timeout 5 git pull >>./log/gitPull_Status$(date "+%Y-%m-%d").log 2>&1
timeout 5 git pull
if [ $? -eq 0 ]; then
    echo "`date` ---- Git Pull Success" >>./log/amon2influxdb_git-$(date "+%Y-%m-%d").log 2>&1
else
    echo "`date` ---- Git Pull Failed" >>./log/amon2influxdb_git-$(date "+%Y-%m-%d").log 2>&1
fi

# 运行python脚本
python setup.py
# python setup.py > /dev/null 2>&1 &
# echo "amon2influxdb is running"