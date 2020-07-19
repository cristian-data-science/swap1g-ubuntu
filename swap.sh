#!/bin/bash

apt-get update

fallocate -l 1G /swapfile

chmod 600 /swapfile

mkswap /swapfile

swapon /swapfile

echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab

sysctl vm.swappiness=10

echo "vm.swappiness=10" >> /etc/sysctl.conf
