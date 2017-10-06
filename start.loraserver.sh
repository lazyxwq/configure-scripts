#!/bin/bash

echo "starting loraserver..."

sudo /etc/init.d/mosquitto restart
sudo /etc/init.d/redis-server restart
sudo /etc/init.d/postgresql restart
sudo systemctl restart lora-gateway-bridge.service
sudo systemctl restart lora-gateway-config.service
sudo systemctl restart lora-app-server.service
sudo systemctl restart loraserver.service

echo "started loraserver"
