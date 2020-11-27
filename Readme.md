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
docker run -v projects:/root --rm docker-kunlun-mirror:latest pyscan scan -t /root/projects  
```

## Todo

- [ ] 提供结果输出
