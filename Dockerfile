FROM python:3.9-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk upgrade \
  && apk add --no-cache curl wget git \
  && cd /root && git clone https://github.com/LoRexxar/Kunlun-M && cd ./Kunlun-M \
  && pip install -r requirements.txt \
  && cp Kunlun_M/settings.py.bak Kunlun_M/settings.py \
  && python kunlun.py init \
  && apk del curl wget git && rm -rf /var/cache/apk/*

RUN chmod -R 0755 /root/Kunlun-M/logs

WORKDIR /root

COPY ./pyscan /usr/bin/pyscan
#COPY --chmod=a+x ./docker-entrypoint.sh /usr/bin/docker-entrypoint.sh