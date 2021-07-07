# 自定义脚本任务区  

宿主机`volumes`挂载`mod_scripts`文件夹至容器内  
`- ./mod_scripts:/mod_scripts`  

开启 CUSTOM_SHELL_FILE 参数配置执行自定义shell脚本  
`- CUSTOM_SHELL_FILE=/mod_scripts/shell_script_mod.sh`  

将自定义脚本放入宿主机`mod_scripts`文件夹内  

配置文件夹下`remote_crontab_list.sh`定时任务脚本  

容器内执行`docker_entrypoint.sh`即可  
