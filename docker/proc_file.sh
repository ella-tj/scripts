#!/bin/sh

if [[ -f /usr/bin/jd_bot && -z "$DISABLE_SPNODE" ]]; then
  CMD="spnode"
else
  CMD="node"
fi

echo "处理jd_crazy_joy_coin任务。。。"
if [ ! $CRZAY_JOY_COIN_ENABLE ]; then
   echo "默认启用jd_crazy_joy_coin杀掉jd_crazy_joy_coin任务，并重启"
   eval $(ps -ef | grep "jd_crazy_joy_coin" | grep -v "grep" | awk '{print "kill "$1}')
   echo '' >/scripts/logs/jd_crazy_joy_coin.log
   $CMD /scripts/jd_crazy_joy_coin.js | ts >>/scripts/logs/jd_crazy_joy_coin.log 2>&1 &
   echo "默认jd_crazy_joy_coin重启完成"
else
   if [ $CRZAY_JOY_COIN_ENABLE = "Y" ]; then
      echo "配置启用jd_crazy_joy_coin，杀掉jd_crazy_joy_coin任务，并重启"
      eval $(ps -ef | grep "jd_crazy_joy_coin" | grep -v "grep" | awk '{print "kill "$1}')
      echo '' >/scripts/logs/jd_crazy_joy_coin.log
      $CMD /scripts/jd_crazy_joy_coin.js | ts >>/scripts/logs/jd_crazy_joy_coin.log 2>&1 &
      echo "配置jd_crazy_joy_coin重启完成"
   else
      eval $(ps -ef | grep "jd_crazy_joy_coin" | grep -v "grep" | awk '{print "kill "$1}')
      echo "已配置不启用jd_crazy_joy_coin任务，仅杀掉"
   fi
fi

echo "处理前端扫码"
if [ ! $QRcookie_ENABLE ]; then
      eval $(ps -ef | grep "index" | grep -v "grep" | awk '{print "kill "$1}')
      echo "默认不启用前端扫码任务，仅杀掉"
else
   if [ $QRcookie_ENABLE = "Y" ]; then
      echo "配置启用前端扫码，杀掉QRcookie任务，并重启"
      eval $(ps -ef | grep "index" | grep -v "grep" | awk '{print "kill "$1}')
      echo '' >/scripts/logs/QRcookie.log
      $CMD /scripts/QRcookie/index.js | ts >>/scripts/logs/QRcookie.log 2>&1 &
      echo "配置前端扫码重启完成"
   else
      eval $(ps -ef | grep "index" | grep -v "grep" | awk '{print "kill "$1}')
      echo "已配置不启用前端扫码任务，仅杀掉"
   fi
fi
