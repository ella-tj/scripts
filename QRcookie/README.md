# GetJDCookies from Echowxsy  

### 本地运行  
依赖`mpm install`  
启动`node index`  

### Docker容器运行  
docker run -d --name jd_cookie -p 6789:6789 -e QYWX_KEY={QYWX_KEY} -e QYWX_AM={QYWX_AM} -e UPDATE_API={UPDATE_API} echowxsy/jd_cookie  

### 当前容器内运行  
`dockercompose.yml`变量`QRcookie_ENABLE`设为值`paolu`  
