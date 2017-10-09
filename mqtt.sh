#!/bin/bash

echo "mosquitto_sub -h home.xwqzly.com -u loraroot -P mqtt -p 1883 -t $1"
mosquitto_sub -h home.xwqzly.com -u loraroot -P mqtt -p 1883 -t $1
