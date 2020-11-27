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
````

## 如何使用

```shell script
# 扫描文件
docker run -v /root/projects:/root/projects --rm kunlun-mirror:latest pyscan scan -t /root/projects

# 昆仑镜终端
docker run -it -v /root/projects:/root/projects --rm kunlun-mirror:latest pyscan console
  
```

## Todo

- [ ] 提供结果输出
