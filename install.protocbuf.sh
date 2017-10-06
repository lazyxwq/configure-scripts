#!/bin/bash

echo "安装protoc，github目录:https://github.com/google/protobuf..."
sudo apt update
sudo apt-get install autoconf automake libtool curl make g++ unzip

git clone --recursive https://github.com/google/protobuf.git

cd protobuf

./autogen.sh

./configure

make

make check

sudo make install

sudo ldconfig

protoc --version



