#!/bin/bash

echo "stopping loraserver..."
sudo systemctl stop loraserver.service
sudo systemctl stop lora-app-server.service
sudo systemctl stop lora-gateway-bridge.service
sudo systemctl stop redis-server.service
sudo systemctl stop mosquitto.service
sudo systemctl stop postgresql.service

echo "stoped loraserver"
