# 文件权限

## 1. UID, 密码

UID: 每个用户唯一的UID, 用户权限是通过UID来跟踪。

- 存放于/etc/passwd文件中

- root为0

/etc/shadow: 存放用户的密码

## 2. 用户管理

### 2.1. 添加用户

useradd

- D 显示创建新用户时的默认值
  - e 修改默认值中的过期日期: useradd -D -e 日期
  - s 修改默认值中的登录shell: useradd -D -s /bin/bash
  
- m 创建用户的$HOME目录, 根据/etc/skel
