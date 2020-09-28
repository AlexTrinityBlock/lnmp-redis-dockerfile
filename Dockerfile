#建構映像檔
# docker build -t="q123717111/lnmp-redis" .
#容器建構
#docker run --name=Web -it -p 80:80 -v E:\桌面\Docker\Web\public:/var/www/public q123717111/lnmp-redis /bin/bash
# 
#Ubuntu最後一版
FROM ubuntu

WORKDIR /

#導入phpmyadmin安裝腳本
ADD install-phpmyadmin /tmp

#更新apt,安裝nginx,安裝php,安裝redis,安裝mysql
RUN echo "\n\n 更新apt \n\n";\
    apt-get update -y ;\
    echo "\n\n 安裝nginx \n\n";\
    apt-get install nginx -y; \
    echo "\n\n 安裝php \n\n";\
    apt-get install php-fpm php-mysql -y; \
    echo "\n\n 安裝redis \n\n";\
    apt install redis-server -y ;\
    echo "\n\n 安裝mysql \n\n";\
    apt-get install mysql-server -y ;\
    echo "\n\n 安裝vim \n\n";\
    apt-get install vim -y ;\
    echo "\n\n 安裝php-mbstring \n\n";\
    apt-get install php-mbstring  -y; \
    echo "\n\n 啟動phpmyadmin安裝腳本 \n\n";\
    /tmp/install-phpmyadmin;\
    echo "\n\n 刪除phpmyadmin安裝腳本 \n\n";\
    rm /tmp/install-phpmyadmin;\
    echo "\n\n 建立網頁資料夾 \n\n";\
    mkdir /var/www/public;\
    echo "\n\n 建立自訂腳本資料夾 \n\n";\
    mkdir /var/shellscript; \
    echo "\n\n 刪除nginx舊設定檔 \n\n";\
    rm /etc/nginx/sites-enabled/default  ;


#將目錄裡的啟動伺服器腳本加入容器
ADD server-restart /var/shellscript
ADD server-start /var/shellscript
ADD server-stop /var/shellscript
#將nginx設定覆蓋
ADD default /etc/nginx/sites-enabled/default
#codeIgniter 安裝支援
ADD codeIgniter-installer /var/shellscript
#環境變數
ENV PATH=$PATH:/var/shellscript

#啟動伺服器指令
#server-start
#重新啟動伺服器指令
#server-restart
#停止伺服器指令
#server-stop

