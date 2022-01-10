from urllib import parse
import requests
import urllib3
import datetime
import os,time
import json

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)


#1.12
#增加抢到推送
#numm 0 第一个ck，以此类推
#具体自己研究



def env(key):
    return os.environ.get(key)

if env("CFD_NUM"):   
    numm=int((env("CFD_NUM")))
else:
    numm=0

if env("JD_COOKIE"):    
    jd_cookie=(env("JD_COOKIE").split('&'))
    jdck = jd_cookie[numm]
    

try:
    from notify import send
  #  print('加载了notify')
except:
    try:
        from sendNotify import send
    #    print('加载了sendNotify')
    except:
        print('找不到通知文件，没有通知')
        send=None

url = "https://api.m.jd.com/client.action?functionId=lite_newBabelAwardCollection"

headers = {
    "Host": "api.m.jd.com",
    "cookie":jdck,
    "charset": "UTF-8",
    "accept-encoding": "br,gzip,deflate",
    "user-agent": "jdapp;iPhone;10.0.10;13.5;network/4g;model/iPhone11,8;Mozilla/5.0 (iPhone; CPU iPhone OS 13_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148;supportJDSHWK/1",
    "content-type": "application/x-www-form-urlencoded; charset\u003dUTF-8",
            }

payload ="body={%22activityId%22:%22TqTRGRrp9HZTfeyRTL2UGmX4mHG%22,%22scene%22:%221%22,%22args%22:%22key=DD98BDDD838A0F60578BEC06CF63F1E027D176A315E60F18E48104FE15076D58FFA18701879AA339876F5FB4B7F513F9_bingo,roleId=9E2C6D36242771388D05258F238C6CD4_bingo,strengthenKey=19F512DCD8EE34ABE9C4FB4A92C2F42AD9E7D4E209C7E54FA67BF30135A95927_bingo%22,%22platform%22:%221%22,%22orgType%22:%222%22,%22openId%22:%22-1%22,%22pageClickKey%22:%22-1%22,%22eid%22:%22%22,%22fp%22:%22%22,%22userArea%22:%22-1%22,%22client%22:%22-1%22,%22clientVersion%22:%22-1%22,%22uuid%22:%22-1%22,%22osVersion%22:%22-1%22,%22brand%22:%22-1%22,%22model%22:%22-1%22,%22networkType%22:%22-1%22,%22pageClick%22:%22Babel_Coupon%22,%22couponSource%22:%22manual%22,%22couponSourceDetail%22:%22-100%22,%22channel%22:%22%E9%80%9A%E5%A4%A9%E5%A1%94%E4%BC%9A%E5%9C%BA%22,%22cv%22:%222.0%22}&client=wh5&clientVersion=1.0.0"

def mina():
     r = requests.post(url, data=payload,headers=headers, verify=False)
     jdata = str(r.json())
     if str(r.json()).find('领券成功') != -1:        
         print('抢到了',datetime.datetime.now()) 
         send('59-20抢购通知','已抢到')
     else:
         print(datetime.datetime.now(),r.json()) 



i=0
while True:
    if i ==12:
        break
    else:      
        mina()
        i=i+1
        time.sleep(0.2)
