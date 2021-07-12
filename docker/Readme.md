### Docker安装 

- 国内一键安装 `sudo curl -sSL https://get.daocloud.io/docker | sh`
- 国外一键安装 `sudo curl -sSL get.docker.com | sh`
- 北京外国语大学开源软件镜像站 `https://mirrors.bfsu.edu.cn/help/docker-ce/`


docker-compose 安装
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
`Ubuntu`用户快速安装`docker-compose`
```
sudo apt-get update && sudo apt-get install -y python3-pip curl vim git moreutils
pip3 install --upgrade pip
pip install docker-compose
```

通过`docker-compose version`查看`docker-compose`版本，确认是否安装成功。
> 注⚠️：前提先理解学会使用这下面的教程
### 创建一个目录`jd_scripts`用于存放备份配置等数据，迁移重装的时候只需要备份整个jd_scripts目录即可
需要新建的目录文件结构参考如下:
```
jd_scripts
├── logs
│   ├── XXXX.log
│   └── XXXX.log
├── my_crontab_list.sh
└── docker-compose.yml
```
- `jd_scripts/logs`
- - 建一个空文件夹就行
- `jd_scripts/docker-compose.yml`
- - [默认配置](./example/docker-compose.yml)
- `jd_scripts/my_crontab_list.sh`
- - [默认配置](./crontab_list.sh)

##### 目录文件配置好之后在 `jd_scripts`目录执行。  
 `docker-compose up -d` 启动（修改docker-compose.yml后需要使用此命令使更改生效）；  
 `docker-compose logs` 打印日志；  
 `docker-compose logs -f` 打印日志，-f表示跟随日志；
 `docker logs -f jd_scripts` 和上面两条相比可以显示汉字；
 `docker-compose pull` 更新镜像；  
 `docker-compose stop` 停止容器；  
 `docker-compose restart` 重启容器；  
 `docker-compose down` 停止并删除容器；  

- 你可能会用到的命令
  
   `docker exec -it jd_scripts /bin/sh -c 'git -C /scripts pull && node /scripts/jd_bean_change.js'`  手动运行一脚本
   
   `docker exec -it jd_scripts /bin/sh -c 'env'`  查看设置的环境变量
   
   `docker exec -it jd_scripts /bin/sh -c 'crontab -l'`  查看已生效的crontab_list定时器任务
   
   `docker exec -it jd_scripts sh -c "docker_entrypoint.sh"` 手动更新jd_scripts仓库最新脚本
   
   `docker exec -it jd_scripts /bin/sh` 仅进入容器命令
   
   `rm -rf  logs/*.log` 删除logs文件夹里面所有的日志文件
   
   ### DOCKER专属环境变量

|        Name       |      归属      |  属性  | 说明                                                         |
| :---------------: | :------------: | :----: | ------------------------------------------------------------ |
| `CRZAY_JOY_COIN_ENABLE` | 是否jd_crazy_joy_coin挂机 | 非必须 | `docker-compose.yml`文件下填写`CRZAY_JOY_COIN_ENABLE=Y`表示挂机,`CRZAY_JOY_COIN_ENABLE=N`表不挂机 |
| `DO_NOT_RUN_SCRIPTS` | 不执行的脚本 | 非必须 | 例:`docker-compose.yml`文件里面填写`DO_NOT_RUN_SCRIPTS=jd_family.js&jd_dreamFactory.js&jd_jxnc.js`, 建议填写完整脚本名,不完整的文件名可能导致其他脚本被禁用 |
| `ENABLE_AUTO_HELP` | 单容器多账号自动互助 | 非必须 | 例:`docker-compose.yml`文件里面填写`ENABLE_AUTO_HELP=true` |
