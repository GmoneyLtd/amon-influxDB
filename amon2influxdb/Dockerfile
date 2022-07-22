FROM python:3.10.5-alpine3.16
LABEL version=1.0 \
    maintainer=APUER \
    description="Amon Consumed InfluxDB"

ENV GIT_URL='https://github.com/GmoneyLtd/amon_Consumed_influxdb.git'

# 变更alpine为阿里源，好慢啊！
RUN echo http://mirrors.aliyun.com/alpine/v3.16/main/ > /etc/apk/repositories && \
    echo http://mirrors.aliyun.com/alpine/v3.16/community/ >> /etc/apk/repositories

# install bash shell & git
RUN apk add --no-cache bash \
    && apk add --no-cache git \
    && rm -rf /var/cache/apk
WORKDIR /opt/amon2influxdb
RUN git clone --depth 1 $GIT_URL /opt/amon2influxdb \
    && pip install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -r requirements.txt
# RUN pip install --upgrade pip -r requirements.txt
# CMD ["python", "setup.py"]
CMD ["/bin/sh"]
