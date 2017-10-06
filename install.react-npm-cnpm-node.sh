#!/bin/bash

echo "安装react-scritps，需要安装npm或者国内得cnpm来管理安装react-scripts...详细react安装资料:http://www.jianshu.com/p/a62da41dacce"
sudo apt update
sudo apt install npm
sudo npm install -g cnpm

echo "解决/usr/bin/env: node: No such file or directory问题"
sudo ln -s /usr/bin/nodejs /usr/bin/node

sudo cnpm install -g create-react-app

