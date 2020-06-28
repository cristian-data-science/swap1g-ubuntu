#!/bin/bash

sudo apt-get update

sudo fallocate -l 1G /swapfile

sudo chmod 600 /swapfile

sudo mkswap /swapfile

sudo swapon /swapfile

sudo echo "/swapfile   none    swap    sw    0   0" >> archivo.txt

sudo sysctl vm.swappiness=10

sudo echo "vm.swappiness=10" >> archivo.txt
