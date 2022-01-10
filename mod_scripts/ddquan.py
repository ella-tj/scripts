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

url = "https://api.m.jd.com/client.action?functionId=receiveNecklaceCoupon&clientVersion=10.1.6&build=90532&client=android&d_brand=Xiaomi&d_model=RedmiK30Pro&osVersion=11&screen=2356*1080&partner=cymqj09&oaid=d7b1d0cc7e9e3dc9&openudid=d4ff5c493bb07949&eid=eidA0dd98122e6s9HDUhwOuoQ6qRvKzkfO03Ohw1Iz5gVPSjXhsqKM1QP4j4fXuxWgo6HVNk507MnkEVeLQlyVdMPCbRQ6rZk0NsevlMwGjSJRDjWnE4&sdkVersion=30&lang=zh_CN&uuid=d4ff5c493bb07949&aid=d4ff5c493bb07949&area=15_1262_1266_57931&networkType=wifi&wifiBssid=unknown&uts=0f31TVRjBStVT1DXiU6S3LnKqE6b0zIv%2BZS%2BbFjplg9e8sWTENrgiybYZuDlNQv9kyJ8YiRKAlIz703GSOr%2F%2FZii%2FUWy0ojQFyTL9Y8Sf12OuCXzKqpe6XheF7CY%2F%2BrDBjAu2yXxnxxtGtu0xIPs1WZAFEOxkFCIwKmCRkHNSc1wxqyadVJq9gAnbik6jO2MvXoJ%2FPjIsMNyXfLL%2BPIPeQ%3D%3D&uemps=0-0&harmonyOs=0&ext=%7B%22prstate%22%3A%220%22%7D&st=1641634997619&sign=eb35c55a637f442be645906c1959e8b4&sv=121"

headers = {
    "Host": "api.m.jd.com",
    "cookie":jdck,
    "charset": "UTF-8",
    "accept-encoding": "br,gzip,deflate",
    "user-agent": "okhttp/3.12.1;jdmall;android;version/10.3.0;build/91795;",
    "content-type": "application/x-www-form-urlencoded; charset\u003dUTF-8",
            }

payload ="body=%7B%22channel%22%3A%22%E9%A2%86%E5%88%B8%E4%B8%AD%E5%BF%83%22%2C%22childActivityUrl%22%3A%22openapp.jdmobile%3A%2F%2Fvirtual%3Fparams%3D%7B%5C%22category%5C%22%3A%5C%22jump%5C%22%2C%5C%22des%5C%22%3A%5C%22couponCenter%5C%22%7D%22%2C%22couponSource%22%3A%22manual%22%2C%22couponSourceDetail%22%3Anull%2C%22eid%22%3A%22eidA0dd98122e6s9HDUhwOuoQ6qRvKzkfO03Ohw1Iz5gVPSjXhsqKM1QP4j4fXuxWgo6HVNk507MnkEVeLQlyVdMPCbRQ6rZk0NsevlMwGjSJRDjWnE4%22%2C%22extend%22%3A%2288DB80104521161CDFFBD5A8057E28D3941D590E2F7DC02E1D31B071454EC165A213BE06482C2B115ACD30536499B3CB0A01A2E3517769E5B0D9D7A5FEB8B889459DDA4C66A5E058A52F3340DE2E323BCD41E3FB9B8F1FCAA49C30F499936BED9393D1F7D7CD1D27D159B86450C1959A565DD628037E0A0AA4B613DC33A4BEF280F956D5F70803534BA022EE6CDA5088A916CA8B2E8BC0A2348A6B24685A9895FF31BFF7A74CB2AFCD520B65434EBE2481B0EE83CB036095E096BA8FB058120C69ACE5B7C5FF807AF668AB8EFB4B9B4FDED5ECA43B86FB547444C4463493CAD8E6B8790F64CD1ABEA463B6C58E30B22701733ABC217A08D2BF0490734EA3EA362101E14E918806949DEE51CB01DC8DBE%22%2C%22lat%22%3A%22%22%2C%22lng%22%3A%22%22%2C%22pageClickKey%22%3A%22Coupons_GetCenter%22%2C%22rcType%22%3A%224%22%2C%22shshshfpb%22%3A%22JD012145b9PKLCuPUwsl164163497523801-KkYtUWDOTZDIIwXk5O8GNQodEa1ZjIi1lmcdq5%7EkcYfTYlhtrSjY44y9m2%2BXvF0qpSzcLrCpbqYe3VxnF62%2BFUmK6zSTJMtaYs6qaoB7lX%2BJHQGQS69ttHuDFS2M5A%3D%3D%22%2C%22source%22%3A%22couponCenter_app%22%2C%22subChannel%22%3A%22feeds%E6%B5%81%22%7D&"

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

