# 监控命令

## 1. 进程管理

### 1.1. ps

```mathematica
    ps 默认只显示运行在当前终端中属于当前用户的进程
        -e 显示所有进程
        -f 显示完整格式的输出
        -l 显示长列表
            S: 进程状态(O: 正在运行; S: 休眠; R: 可运行, 正等待运行; Z: 僵化, 已终止但找不到父进程, T: 停止)
    常用命令:
        ps -efl 完整格式打印所有进程信息
```

## 1.2. top

```mathematica
    top 实时显示进程信息
        f 对输出进行排序
        d 修改轮询间隔
        q 退出
```

## 1.3. kill

```mathematica
    kill 可以通过PID向进程发送信号(默认发送TERM信号)终止进程
        -s 选择指定其他信号(HUP)
```

## 1.4. pkill

```mathematica
    pkill 可以通过程序名终止进程, 也可以使用通配符。
```

## 1.5. mount

```mathematica
    mount 可以挂载存储设备到虚拟目录
        -o ro 只读形式挂载
        -o rw 读写形式挂载 
    常用命令:
        mount -t ext4(type) 过滤出ext4格式的挂载
```

## 1.6. umount

```mathematica
    umount 卸载设备(虚拟目录或设备): 先卸载才能取出设备
```

## 1.7. df

```mathematica
    df 查看所有已挂载磁盘的使用情况
        -h 人类易读形式显示
```

## 1.8. du

```mathematica
    du 显示某个特定目录的磁盘使用情况
        -h 人类易读形式显示
        -c 显示所有已列出文件的总大小
        -s 输出每个参数的汇总信息
    常用命令:
        du -sh* | sort -hr
```
