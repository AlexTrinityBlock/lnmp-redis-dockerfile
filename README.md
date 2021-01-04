# LNMP與Redis

![image](https://i.imgur.com/VM5RM9O.png)

提供者:蕭維均
### 1.說明
只要將PHP和HTML放入public資料夾
就能輕易運作的網頁伺服器
### 2.安裝與建置
在安裝docker後使用
首先建立一個裝置網頁的資料夾
(強烈建議資料夾名稱為public)
如 ``` C:\public ```

開啟命令提示字元(cmd)或其他shell
以docker指令進行建置
``` 
docker run --name=Web -it -p 80:80 -v C:\public:/var/www/public q123717111/lnmp-redis
```
### 3.放入網頁
將HTML或PHP網站放入public資料夾
### 4.啟動
用命令提示字元(cmd)或其他shell
登入容器
```
docker exec -it Web /bin/bash
``` 
然後輸入啟動伺服器的指令
```
server-start
``` 
就會啟動PHP,MySQL,Nginx服務
這時如果你的80port暢通
你可以在瀏覽器網址列輸入
```
http://127.0.0.1/
```
直接查看你剛放入的網頁。

### 5.管理資料庫

資料庫為mysql
請輸入指令查看預設的使用者帳號密碼

```
default-mysql-password
```

如果想簡單的管理資料庫
內含phpmyadmin
能在瀏覽器的輸入

```
http://127.0.0.1/phpmyadmin
```

來對資料庫進行管理

### 6.重啟伺服器
登入容器
```
docker exec -it Web /bin/bash
``` 
然後輸入重啟伺服器的指令
```
server-restart
``` 

### 7.關閉伺服器

登入容器
```
docker exec -it Web /bin/bash
``` 
然後輸入關閉啟伺服器的指令

```
server-stop
``` 

### 8.構成
1. ubuntu:
linux發行版之一
2. mysql:
資料庫軟體
3. nginx:
能夠讓網頁運作的伺服器
4. php
網頁後端語言，被廣泛使用
5. redis
可將伺服器的資訊存入記憶體的程式
用加速網頁回應或增加伺服器附載量
6. phpmyadmin
用親切的網頁形式管理資料庫的GUI網頁應用

### 9.用Dockerfile建置

[下載Dockerfile](https://github.com/AlexTrinityBlock/lnmp-redis-dockerfile/archive/master.zip )

將所有的檔案一併放入同一個資料夾中
用命令提示字元(cmd)或其他shell
cd切換到此資料夾目錄下
輸入指令

```
docker build .
```

建置需要非常久的時間，請耐心等待

### 10.安裝PHP框架

#### CodeIgniter	CodeIgniter
主流的商用或民間網站PHP開源免費框架之一	
在此提供非常簡單建置的方式<br>	
[CodeIgniter快速簡單建置](https://github.com/AlexTrinityBlock/lnmp-redis-dockerfile/blob/master/codeIgniter-install.md) <br>
[CodeIgniter前後端分離(測試性)](https://github.com/AlexTrinityBlock/lnmp-redis-dockerfile/blob/master/codeIgniter-separates-installer.md)
