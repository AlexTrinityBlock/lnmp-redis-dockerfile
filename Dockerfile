
# docker build -t="q123717111/lnmp-redis" .
#容器建構
#Docker run --name=Web -it -p 80:80 \
#-v E:\桌面\Docker\Web\public:/var/www/public q123717111/lnmp-redis\
# 
#Ubuntu最後一版
FROM ubuntu

WORKDIR /

#更新apt,安裝nginx,安裝php,安裝redis,安裝mysql
RUN apt-get update -y && \
    apt-get install nginx -y &&\
    apt-get install php-fpm php-mysql -y &&\
    apt install redis-server -y &&\
    apt-get install mysql-server -y &&\
    apt-get install vim -y &&\
    apt-get install php-mbstring  -y &&\
    mkdir /var/shellscript &&\
    rm /etc/nginx/sites-enabled/default  &&\
    mkdir /var/www/public

#將目錄裡的啟動伺服器腳本加入容器
ADD server-restart /var/shellscript
ADD server-start /var/shellscript
#將nginx設定覆蓋
ADD default /etc/nginx/sites-enabled/default 
#環境變數
ENV PATH=$PATH:/var/shellscript

#啟動伺服器指令
#/var/shellscript/server-start

#重新啟動伺服器指令
#/var/shellscript/server-restart

#建議
#1.可以嘗試安裝phpmyadmin，指令如下
#apt-get install phpmyadmin