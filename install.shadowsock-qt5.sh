#!/bin/bash

echo "安装shadowsocks-qt5图形版本客户端，不适用vps，字符界面得服务器可以安装shadowsocks-lib或者python版本"
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5
