#!/bin/bash

echo -e "for more details, please browser following links:https://docs.docker.com/compose/install/#master-builds \n http://blog.csdn.net/zhiaini06/article/details/45287663"
echo "Run this command to download the latest version of Docker Compose:"
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

echo "Apply executable permissions to the binary:"
sudo chmod +x /usr/local/bin/docker-compose

echo "Test the installation."
docker-compose --version






echo "install docker compose successful, wish you!"

