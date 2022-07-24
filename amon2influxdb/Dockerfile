FROM python:3.10.5-alpine3.16
LABEL version=1.0 \
    maintainer=APUER \
    description="Amon Consumed InfluxDB"

# 定义python script git clone地址, 
ENV git_uri='https://github.com/GmoneyLtd/amon_Consumed_influxdb.git' \
    # influxdb 参数
    url="http://influxdb:8086" \
    org="arun" \
    token="XB1gLmlbnwVLVXF6WNpPkaM4MTgBrn8yGsrdM6Pvyz3-UOUQelKZrXO4joxYd8EWwDHCMWXKEfb4OGLHrB1jcA==" \
    timeout=6000 \
    verify_ssl=False \
    bucket="amon" \
    # amon 参数
    host="amon" \
    port="5555" \
    topic="" \
    # python script log fiel level
    level="INFO"

# 变更alpine为阿里源，好慢啊！
RUN echo http://mirrors.aliyun.com/alpine/v3.16/main/ > /etc/apk/repositories && \
    echo http://mirrors.aliyun.com/alpine/v3.16/community/ >> /etc/apk/repositories

# install bash shell & git
RUN apk add --no-cache bash \
    && apk add --no-cache git \
    && rm -rf /var/cache/apk
WORKDIR /opt/amon2influxdb
RUN git clone --depth 1 $git_uri /opt/amon2influxdb \
    && pip install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com -r requirements.txt
# RUN pip install --upgrade pip -r requirements.txt
# CMD ["python", "setup.py"]
CMD ["/bin/sh"]
