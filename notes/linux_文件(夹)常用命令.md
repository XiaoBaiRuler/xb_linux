# 文件(夹)常用命令

## 1.1 cd

```mathematica
    cd 绝对路径/相对路径
    . 当前目录
    .. 上一层目录
```

## 1.2. ls

```mathematica
    ls 显示所有文件/目录
        -F 区分显示文件和目录
        -a 显示隐藏文件(.开始的文件)
        -R 递归显示所有子目录的信息
        -l 显示各个文件的详情信息
        -i 显示文件或目录的inode编号(唯一标识)
    常用命令:
        ls -alF 显示所有文件目录的详情，并区分文件和目录。
```

## 1.3. touch

```mathematica
    touch 创建空文件(不会影响已存在的文件内容, 但会改变文件修改时间)

```

## 1.4. cp

```mathematica
    cp 将源文件复制到目标文件
        -i 询问是否覆盖已有文件
        -R 递归复制整个目录到目标目录
        
```

## 1.5. ln

```mathematica
    cp 创建链接文件, 默认创建硬链接文件
        -s 创建符号链接

```

## 1.6. mv

```mathematica
    mv 移动文件或目录, 以及重命名 
```

## 1.7. rm

```mathematica
    rm 删除文件或目录
        -i 询问是否要删除该文件
        -r 递归删除整个目录
        -f 强制删除
    常用命令:
        rm -rfi 删除整个目录(必须带上询问)

```

## 1.8. mkdir

```mathematica
    mkdir 创建目录
        -p 批量地创建目录和子目录
```

## 1.9. rmdir

```mathematica
    rmdir 删除目录(默认只能删除空目录)
```

## 1.10. file

```mathematica
    file 探测文件的内部并判断文件类型
```

## 1.11. cat

```mathematica
    cat 显示文本文件
        -n 带上行号显示
        -b 对非空输出行编号
```

## 1.12. more

```mathematica
    more 会在显示每页数组之后暂停下来
        空格键 向前翻页
        Enter 逐行向前查看
        q键   推出
```

## 1.13. less

```mathematica
    less more升级版(能识别上下箭头键以及上下翻页键)
        空格键 向前翻页
        Enter 逐行向前查看
        q键   推出
```

## 1.14. tail

```mathematica
    tail 显示文件最后几行的内容
        -n 显示最后几行(默认10)
```

## 1.15. head

```mathematica
    head 显示文件前面几行的内容
        -n 显示前面几行(默认10)
```

## 1.16. sort

```mathematica
    sort 按照默认语言规则对文本文件中的数据排序
        -n 按照数字排序
        -r 逆序排序
        -t -k 指定分隔符, 指定排序字段
```

## 1.17. grep

```mathematica
    grep 查找文件中的某个文本
        -v 查询不匹配的行
        -n 显示匹配在第几行
        -c 查看有多少行匹配
        -e 指定多种匹配方式
```
