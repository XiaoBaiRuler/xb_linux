# shell

## 1. 基础知识

```mathematica
    which bash 查看应用位置(只显示外部命令文件)
    type bash 查看应用位置
    /etc/passwd 记录用户的默认shell
    cat /etc/shells 列出所有已安装的shell

命令列表: 以分号分隔命令
    pwd; ls -l;

进程列表: 将命令列表放到()里; 生成了一个子shell来执行命令
    (pwd; ls -l; echo $BASH_SUBSHELL;)

外部命令: 存在于bash shell之外, 通常位于/bin /usr/bin /sbin /usr/bin目录下的程序;
    每当执行外部命令时, 就会创建一个子进程(forking)
    - ps
    
内部命令: 存在于bash shell, 无须使用子进程执行的程序。
    - cd
    - exit

history(内部命令): 查看最近使用命令列表, 存储于.bash_history(不一定一致)
    -a 强制将命令历史记录写入.bash_history
    -c 清除命令历史
    
alias(内部命令): 允许为常用命令及其参数创建一个名称
    -p 查看当前可用的别名
    创建别名:仅仅在当前shell有效
        alias li='ls -i'
    删除别名:
        unalias name

全局环境变量: 对于shell对话和所有生成的子shell都是可见的
    printenv 查看全局变量
    printenv HOME 查看个别环境变量
    创建全局变量:(仅在子shell有效, 无法影响父shell)
        1. 先创建局部变量
        2. export name 导出到全局环境
    删除全局变量:(仅在子shell有效, 无法影响父shell)
        unset name

局部环境变量: 定义它的进程中可见
    set 显示全局，局部, 用户自定义变量, 局部shell函数

用户自定义变量:(默认小写)
    a="hello world";
    echo $a;
```

## 2. 后台模式

```mathematica
    后台模式: 在处理命令的同时让出CLI: 在命令末尾加上字符&
```

## 3. 协程

```mathematica
    协程: 后台生成一个子shell，并在其中执行命令: coproc: 速度慢
    coproc sleep 10;
    coproc my_job { sleep 10; } 扩展语法: {} 里面前后必须有空格
```
