#!/bin/bash

 #sudo dd if=/dev/zero of=/swapfile bs=64M count=16
sudo dd if=/dev/zero of=/swapfile bs=64M count=64
sudo mkswap /swapfile
sudo swapon /swapfile
