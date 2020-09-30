# CodeIgniter前後端分離 
---

![image](https://i.imgur.com/KYXbuVf.png)

### 警告!這個僅用於作者測試性練習操作

## 1.建立www資料夾

建立一個www資料夾，我們專案將放在其中<br>
將會自動生成兩個資料夾<br>
web資料夾用於裝置前端靜態頁面<br>
api資料用於裝置CodeIgniter後端<br>

## 2.建構容器指令

開啟命令行工具輸入<br>
8088 port導向phpmyadmin<br>
80  port導向靜態網站<br>
域名/api/ 導向後端CodeIgniter<br>
```
docker run --name=WebCI -it -p 80:80  -p 8088:8088 -v 專案www資料夾:/var/www q123717111/lnmp-redis /bin/bash
```

## 3.輸入建構CodeIgniter指令


```
codeIgniter-separates-installer
```
