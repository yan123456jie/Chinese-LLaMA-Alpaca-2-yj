#!/usr/bin/expect

# 设置ssh密码
set password "QKqcI8t2R8nlRiYD"

# 执行scp命令
spawn scp -r \
chinese_sample \
  root@120.92.217.227:/data/dataset/chinese_sample

# 期望看到密码提示
expect "password:"

# 发送密码
send "$password\r"

# 等待scp命令完成
expect eof