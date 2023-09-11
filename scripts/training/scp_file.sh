#!/usr/bin/expect

# 设置ssh密码
set password "QKqcI8t2R8nlRiYD"

# 执行scp命令
spawn scp -r \
  run_clm_pt.py \
  ds_zero2.json \
  ds_zero2__no_offload_optimizer.json \
  ds_zero2_no_offload.json \
  ds_zero3.json \
  ds_zero3__no_offload_optimizer.json \
  ds_zero3__no_offload_optimizer__no_offload_param.json \
  run_pt_without_lora_single_with_zero.sh \
  task_run.sh \
  root@120.92.217.227:/data/jesse/Chinese-LLaMA-Alpaca-2/scripts/training/

# 期望看到密码提示
expect "password:"

# 发送密码
send "$password\r"

# 等待scp命令完成
expect eof