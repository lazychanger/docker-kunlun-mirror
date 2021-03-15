FROM python:3.9-alpine

# 镜像加速
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

RUN apk update && apk upgrade && apk add --no-cache curl wget git \
  && cd /root && git clone https://github.com/LoRexxar/Kunlun-M && cd ./Kunlun-M \
  && pip install -r requirements.txt \
  && cp Kunlun_M/settings.py.bak Kunlun_M/settings.py \
  && python kunlun.py init \
  && apk del curl wget git && rm -rf /var/cache/apk/*

WORKDIR /root

COPY ./pyscan /usr/bin/pyscan

EXPOSE 9999
