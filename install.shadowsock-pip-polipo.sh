#!/bin/bash

echo "使用pip安装shadowsocks和polipo将socks5代理转换为http代理，貌似有缺陷，代理golang下载源码老是失败，其他没有实验。"
echo "for more details, browser following link: http://blog.csdn.net/hanshileiai/article/details/53899612
http://blog.csdn.net/liuqinglong_along/article/details/52463200"

sudo apt-get install python
sudo apt-get install python-pip

sudo pip install shadowsocks

sudo echo -e "{\n\t\"server\":\"ss\",\n\t\"server_port\":8989,\n\t\"local_port\":1080,\n\t\"password\":\"xiawenqiang\",\n\t\"timeout\":600,\n\t\"method\":\"aes-256-cfb\"\n}" > shadowsocks.json

sudo apt-get install polipo

sudo echo -e "\nproxyAddress = \"0.0.0.0"\nsocksParentProxy = \"127.0.0.1:1080\"\nsocksProxyType = socks5\nchunkHighMark = 50331648\nobjectHighMark = 16384\nserverMaxSlots = 64\nserverSlots = 16\nserverSlots1 = 32" >> /etc/polipo/config

sudo /etc/init.d/polipo restart

export http_proxy="http://127.0.0.1:8123/"
