# shell

## 1. 基础知识

```mathematica
    which bash 查看应用位置
    /etc/passwd 记录用户的默认shell
    cat /etc/shells 列出所有已安装的shell

    命令列表: 以分号分隔命令
    pwd; ls -l;

    进程列表: 将命令列表放到()里; 生成了一个子shell来执行命令
    (pwd; ls -l; echo $BASH_SUBSHELL;)
```

## 2. 后台模式

```mathematica
    后台模式: 在处理命令的同时让出CLI: 在命令末尾加上字符&
```
