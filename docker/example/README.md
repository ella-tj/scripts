### update tips  

- 2021.7.12  
删除挂载二维码通知图片，现在只需要将`acpush.jpg`也就是二维码图片放入宿主机`logs`文件夹内自动处理 

- 2021.7.7  
二维码通知图片挂载（已删除），京喜ua变量`JX_USER_AGENT`  
京喜脚本会用到，否则报错  

- 2021.7.6  
映射前端扫码端口`ports:- 6789:6789`  
前端扫码变量`QRcookie_ENABLE`，值为`paolu`才开放，默认不开放  
前端扫码企业微信通知`QR_QYWX_AM`(企业ID,应用Secret,成员ID,应用AgentId)
