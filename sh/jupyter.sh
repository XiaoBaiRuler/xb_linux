# 后台运行，可以关闭终端
nohup jupyter notebook --allow-root > jupyter.log 2>&1 &
# 后台运行，不可以关闭终端
jupyter notebook --allow-root > jupyter.log 2>&1 &
# 杀死进程
ps -a
kill -9 pid