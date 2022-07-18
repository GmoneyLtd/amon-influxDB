#!/bin/sh
echo $(pwd)
nohup java -jar amon-1.8.2-release.jar --amon-recorder --amon-store zmq  --amon-mappers ./config/amon-mappers.md  >./log/amon.log 2>1& &
tail -f ./log/amon.log