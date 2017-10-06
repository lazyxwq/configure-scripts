#!/bin/bash

echo "使用proxychains也需要安装shadowsock或者其他代理工具，proxychains可以单独为某个引用开启代理，具体使用方式可以参考以下链接:http://blog.csdn.net/q873040807/article/details/56028791"
sudo apt install proxychains -y

sudo echo -e '\nstrict_chain\n
proxy_dns
\nremote_dns_subnet 224
\ntcp_read_time_out 15000
\ntcp_connect_time_out 8000
\nlocalnet 127.0.0.0/255.0.0.0
\nquiet_mode
\n[ProxyList]
\nsocks5 127.0.0.1 1080\n' > /etc/proxychains.conf


