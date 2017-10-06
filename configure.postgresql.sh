#!/bin/bash

echo "for mo details, browser link: http://www.cnblogs.com/zhangpengshou/p/5464610.html"
echo "修改postgressql数据库实现远程访问..."
sudo echo -e "\nlisten_addresses = '*' \npassword_encryption = on" >> /etc/postgresql/9.6/main/postgresql.conf
sudo echo -e "\nhost	all	all	0.0.0.0	0.0.0.0	md5\n" >> /etc/postgresql/9.6/main/pg_hba.conf
echo "重启服务..."
sudo /etc/init.d/postgresql restart
sudo iptables -A INPUT -p tcp -m state --state NEW -m tcp --dport 5432 -j ACCEPT

