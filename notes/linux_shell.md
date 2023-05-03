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

删除环境变量: 不能使用$;
    unset name 如果是全局环境变量，仅对子进程有效

环境变量持久化:
    1. 在/etc/profile.d目录中创建一个.sh结尾的文件, 把新的或修改过的全局环境变量设置放里面
    2. 对于个人用户的永久变量，设置在$HOME/.bashrc
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

## 4. 登录shell

五个启动文件:

1. /etc/profile 主启动文件

2. $HOME/.bash_profile

3. $HOME/.bashrc 启动交换shell时执行, 加别名和脚本函数

4. $HOME/.bash_login

5. $HOME/.profile

## 5. 交互式shell

<mark> 不处理./etc/profile文件，启动$HOME目录中的.bashrc文件 </mark>

## 6. 非交互式shell

<mark>处理$BASH_ENV环境变量包含的启动文件</mark>
