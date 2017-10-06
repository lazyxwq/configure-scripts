#!/bin/bash


echo "使用shadowsocks+privoxy，将socks5代理转换为http代理..."
sudo apt-get install privoxy

#add /etc/privoxy/config

#forward-socks4 / 127.0.0.1:1080
#forward-socks4a / 127.0.0.1:1080
#forward-socks5 / 127.0.0.1:1080

#add to .bashrc
function proxy_off(){
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset rsync_proxy
    echo -e "已关闭代理"
}

function proxy_on() {
    echo "请先用sslocal开启socks5代理..."
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
    export http_proxy="http://127.0.0.1:8118"
    export https_proxy="https://127.0.0.1:8118"
    export https_proxy=$https_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export HTTP_PROXY=$http_proxy
    export HTTPS_PROXY=$https_proxy
    export FTP_PROXY=$http_proxy
    export RSYNC_PROXY=$http_proxy
    echo -e "已开启代理"
}

