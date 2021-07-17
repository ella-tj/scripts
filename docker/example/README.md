### update tips  

- 2021.7.17  
东东超市商品兑换`coinToBeans`默认京豆包，值为商品关键词  
东东超市并发执行`blueCoin_Cc`默认`True`开启，`False`关闭  
京东试用是否运行`JD_TRY`默认不运行，值`true`运行  
京东试用不执行的账号`DONOT_TRY_ACCOUNT`，值为账号排序，例`1&6`，账号1与账号3跳过执行  
早起赢现金变量`morningScPins`  

- 2021.7.16  
财富岛热气球挂机`CFD_LOOP_ENABLE`，默认挂机，当值为`Y`任意其它值则不挂机  

- 2021.7.13  
锦鲤变量`kois`值为账号pin多个账号@连接    

- 2021.7.12  
删除挂载二维码通知图片，现在只需要将`acpush.jpg`也就是二维码图片放入宿主机`logs`文件夹内自动处理 

- 2021.7.7  
二维码通知图片挂载（已删除），京喜ua变量`JX_USER_AGENT`  
京喜脚本会用到，否则报错  

- 2021.7.6  
映射前端扫码端口`ports:- 6789:6789`  
前端扫码变量`QRcookie_ENABLE`，值为`paolu`才开放，默认不开放  
前端扫码企业微信通知`QR_QYWX_AM`(企业ID,应用Secret,成员ID,应用AgentId)
