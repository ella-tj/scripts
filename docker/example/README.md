### update tips  

- 2021.11.30  
京豆换喜豆`exjxbeans`值为`true`运行，默认不运行  

- 2021.11.11  
京喜单独开团变量`jxgc_kaituan`值为设置开团的账号可填用户名 或 pin  
赚京豆小程序变量`zlzh`值为用户名 或 pin  
抢京豆变量`qjd_zlzh`值为用户名 或 pin  
东东超市商品兑换`coinToBeans`默认京豆包，值为商品关键词  
东东超市并发执行`blueCoin_Cc`默认`True`开启，`False`关闭  
东东超市单击次数`dd_thread`同时发生点击兑换按钮次数，适当调整  
关闭cookie有效检测`JD_COOKIE_CHECK``True`开启，`False`关闭  

- 2021.8.8  
签到领现金兑换变量`exchangeAccounts`值为"pt_pin1@2&pt_pin2@10"，账号+金额，默认为所有账号兑换10红包  
(已删除)抢京豆变量`angryBeanPins`值为账号pin多个账号@连接  
(已删除)京喜工厂单独开团`OPEN_DREAMFACTORY_TUAN`值为账号顺序"1,2,3"  

- 2021.7.22  
(已删除)抢京豆变量`qjd_zlzh`值为['pin', '或者', '用户名']  

- 2021.7.20  
(已删除)京喜单独开团变量`jxgc_kaituan`值为设置开团的账号可填用户名 或 pin  

- 2021.7.19  
愤怒的现金变量`cashHelpPins`值为账号pin多个账号@连接，默认向前助力9个账号  
赚30元变量`earn30Pins`值为需要签到和接受助力的账号，默认所有账号  
发财大赢家助力变量`dyjHelpPins`值为账号pin多个账号@连接  

- 2021.7.17  
(已删除)东东超市商品兑换`coinToBeans`默认京豆包，值为商品关键词  
(已删除)东东超市并发执行`blueCoin_Cc`默认`True`开启，`False`关闭  
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
