# docker-kunlun-mirror

## [昆仑镜](https://github.com/LoRexxar/Kunlun-M)

详细操作手册请查看 https://github.com/LoRexxar/Kunlun-M

## 助手指令 pyscan

````shell script
# 扫描目录
pyscan scan -t /root/Kunlun-M/tests/vulnerabilities/

# 查看规则
pysacn show rule

# 展示所有php的rule
pyscan show rule -k php    

# 启动终端
pysacn console
````
## 推荐使用，完整流程示例

```shell script
# 进入昆仑console终端
docker run --name kunlun -it -v /root/projects:/root/projects --rm kunlun-mirror:latest pyscan console

# 进入扫描模式
scan

# 设置扫描地址
set target /root/projects

# 设置扫描语言
set language php

# 启动扫描
run

# 退出扫描，不是退出容器
exit

# 然后查看结果集文件名，有两个结果，一个是扫描日志，一个是结果集csv
# 查看日志目录，确认文件名
ls -al /root/Kunlun-M/logs
# 查看结果集，确认文件名
ls -al /root/Kunlun-M/result


# 扫描完成以后会进入结果集，此时切换到宿主机终端执行 docker cp 复制容器内部文件出来
# 复制结果集到本地
docker cp kunlun:/root/Kunlun-M/result/result.csv ./

docker cp kunlun:/root/Kunlun-M/logs/xxx.log ./

# 切换到docker终端，退出docker
exit
```


## 如何使用
```shell script
# 进入docker终端
docker run -it -v /root/projects:/root/projects --rm kunlun-mirror:latest /bin/sh

# 扫描文件
docker run -v /root/projects:/root/projects --rm kunlun-mirror:latest pyscan scan -t /root/projects

# 昆仑镜终端，不建议使用
docker run -it -v /root/projects:/root/projects --rm kunlun-mirror:latest pyscan console
  
```

## Todo

- [ ] 提供结果输出