# CodeIgniter前後端分離 
---

![image](https://i.imgur.com/KYXbuVf.png)

### 警告!這個僅用於作者測試性練習操作

## 1.建立www資料夾

建立一個www資料夾，我們專案將放在其中

## 2.建構容器指令

開啟命令行工具輸入
8088 port導向phpmyadmin
80  port導向靜態網站
域名/api/ 導向後端CodeIgniter
```
docker run --name=WebCI -it -p 80:80  -p 8088:8088 -v 專案www資料夾:/var/www q123717111/lnmp-redis /bin/bash
```

## 3.輸入建構CodeIgniter指令


```
codeIgniter-separates-installer
```
