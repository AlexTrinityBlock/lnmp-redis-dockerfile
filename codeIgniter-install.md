# 如何安裝 CodeIgniter ?
---

![image](https://i.imgur.com/VM5RM9O.png)

## 1.建立www資料夾

建立一個www資料夾，我們專案將放在其中

## 2.建構容器指令

開啟命令行工具輸入

```
docker run --name=WebCI -it -p 80:80 -v 資料夾www的路徑:/var/www q123717111/lnmp-redis /bin/bash
```

## 3.輸入建構CodeIgniter指令


```
codeIgniter-installer
```
