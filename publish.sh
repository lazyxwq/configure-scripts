#!/bin/bash

if [ $1 = 0 ]; then
    echo "no quest confirm"
    mosquitto_pub -h home.xwqzly.com -p 1883 -u loraroot -P mqtt -d -t 'application/1/node/9bf728017a881379/tx' -m "{\"reference\":\"$2\",\"fPort\":2,\"data\":\"AQIDBA==\"}"
else
    echo "quest confirm"
    mosquitto_pub -h home.xwqzly.com -p 1883 -u loraroot -P mqtt -d -t 'application/1/node/9bf728017a881379/tx' -m "{\"reference\":\"$2\",\"fPort\":2, \"confirmed\":true, \"data\":\"AQIDBA==\"}"
fi
