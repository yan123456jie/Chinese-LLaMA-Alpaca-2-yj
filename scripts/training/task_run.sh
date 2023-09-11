#!/bin/bash

task_shell='run_pt_without_lora_single_with_zero.sh'
#任务：zero3
task_name='output_single_node_zero3_1024.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero3.json 1024 > ${task_name}

#任务：zero3 no_offload_optimizer
task_name='output_single_node_zero3__no_offload_optimizer_1024.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero3__no_offload_optimizer.json 1024 > ${task_name}

#任务：zero3 no_offload_optimizer no_offload_param
task_name='output_single_node_zero3__no_offload_optimizer__no_offload_param_1024.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero3__no_offload_optimizer__no_offload_param.json 1024 > ${task_name}

#任务：zero3 2048
task_name='output_single_node_zero3_offall_2048.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero3__no_offload_optimizer__no_offload_param.json 2048 > ${task_name}

#任务：zero3 4096
task_name='output_single_node_zero3_offall_4096.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero3__no_offload_optimizer__no_offload_param.json 4096 > ${task_name}

#任务：zero2
task_name='output_single_node_zero2.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero2.json 1024 > ${task_name}

#任务：zero2 no_offload_optimizer
task_name='output_single_node_zero2__no_offload_optimizer.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero2__no_offload_optimizer.json 1024 > ${task_name}

#任务：zero2 no_offload
task_name='output_single_node_zero2__no_offload.log'
echo '--------begin task  $task_name--------'
bash ${task_shell} ds_zero2_no_offload.json 1024 > ${task_name}

#运行 nohup ./task_run.sh  > output_task.log 2>&1 &