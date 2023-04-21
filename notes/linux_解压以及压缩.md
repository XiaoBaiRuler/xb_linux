# 解压以及压缩

## 1.1. gzip gunzip

```mathematica
    gzip 压缩文件(不能压缩目录)
    gunzip 解压文件(不能压缩目录)
```

## 1.2. tar

```mathematica
    tar 选项
        -f 将结果输出到文件
        -c 创建新的tar归档文件
        -v 在处理文件时显示文件名
        -t 列出归档文件的内容
        -x 从tar归档文件中提取文件
    
    常用命令:
        压缩:
        1. tar -cvf dest.tar source1/ source2/ 将source1和source2的内容归档到dest.tar
        查看:
        1. tar -tf dest.tar 查看desttar的内容
        解压:
        tar -xvf dest.tar 在当前目录解压文件
        tar -zxvf dest.tar 解压经过gzip压缩过的tar文件

```
