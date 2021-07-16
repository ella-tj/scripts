#!/bin/sh

if [[ -f /usr/bin/jd_bot && -z "$DISABLE_SPNODE" ]]; then
  CMD="spnode"
else
  CMD="node"
fi

echo "处理前端扫码。。。"
if [ ! $QRcookie_ENABLE ]; then
      eval $(ps -ef | grep "index" | grep -v "grep" | awk '{print "kill "$1}')
      echo "默认不启用前端扫码任务，仅杀掉"
else
   if [ $QRcookie_ENABLE = "paolu" ]; then
      echo "配置启用前端扫码，杀掉QRcookie任务，并重启"
      eval $(ps -ef | grep "index" | grep -v "grep" | awk '{print "kill "$1}')
      echo '' >/scripts/logs/QRcookie.log
      $CMD /scripts/QRcookie/index.js | ts >>/scripts/logs/QRcookie.log 2>&1 &
      echo "配置前端扫码重启完成"
   else
      eval $(ps -ef | grep "index" | grep -v "grep" | awk '{print "kill "$1}')
      echo "已配置不启用前端扫码，仅杀掉"
   fi
fi

echo "处理返回图片（未启用扫码请忽视）。。。"
if [ -f "/scripts/logs/acpush.jpg" ];then
      echo "图片文件存在，开始复制文件"
      cp -r /scripts/logs/acpush.jpg /scripts/QRcookie/public
      echo "处理返回图片完成"
else
      echo "图片文件不存在，默认跑路"
fi

echo "处理财富岛热气球挂机任务。。。"
if [ ! $CFD_LOOP_ENABLE ]; then
   echo "默认启用财富岛热气球挂机任务，杀掉jd_cfd_loop任务，并重启"
   eval $(ps -ef | grep "jd_cfd_loop" | grep -v "grep" | awk '{print "kill "$1}')
   echo '' >/scripts/logs/jd_cfd_loop.log
   ts-node /scripts/jd_cfd_loop.ts | ts >>/scripts/logs/jd_cfd_loop.log 2>&1 &
   echo "默认财富岛热气球挂机任务重启完成"
else
   if [ $CFD_LOOP_ENABLE = "Y" ]; then
      echo "配置启用财富岛热气球挂机任务，杀掉jd_crazy_joy_coin任务，并重启"
      eval $(ps -ef | grep "jd_cfd_loop" | grep -v "grep" | awk '{print "kill "$1}')
      echo '' >/scripts/logs/jd_cfd_loop.log
      ts-node /scripts/jd_cfd_loop.ts | ts >>/scripts/logs/jd_cfd_loop.log 2>&1 &
      echo "配置财富岛热气球挂机任务重启完成"
   else
      eval $(ps -ef | grep "jd_cfd_loop" | grep -v "grep" | awk '{print "kill "$1}')
      echo "已配置不启用财富岛热气球挂机任务，仅杀掉"
   fi
fi
