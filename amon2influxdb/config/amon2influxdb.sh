#!/bin/sh
echo $(pwd)
git  pull  >>./log/amon2influxdb_$(date "+%Y-%m-%d").log 2>&1
nohup python ./amon_Consumed_influxdb/setup.py >>./log/amon2influxdb_$(date "+%Y-%m-%d").log 2>&1 &
echo "amon2influxdb is running"