#!/bin/sh
echo $(pwd)
# git  clone -b v1.0 https://github.com/GmoneyLtd/amon_Consumed_influxdb.git /amon2influxdb && pip install --upgrade pip && pip install -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -r requirements.txt >>./log/amon2influxdb_$(date "+%Y-%m-%d").log 2>&1
# nohup python setup.py & 
echo "amon2influxdb is running"
echo "please check the log file ./log/amon_$(date "+%Y-%m-%d").log"