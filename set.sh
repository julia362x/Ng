#!/bin/bash

# Install rclone static binary
wget -q https://downloads.rclone.org/v1.56.2/rclone-v1.56.2-linux-amd64.zip
unzip -q rclone-v1.56.2-linux-amd64.zip
export PATH=$PWD/rclone-v1.56.2-linux-amd64.zip:$PATH

# Install aria2c static binary
wget -q https://github.com/q3aql/aria2-static-builds/releases/download/v1.36.0/aria2-1.36.0-linux-gnu-64bit-build1.tar.bz2
tar xf aria2-1.36.0-linux-gnu-64bit-build1.tar.bz2
export PATH=$PWD/aria2-1.36.0-linux-gnu-64bit-build1:$PATH

# Create download folder
mkdir -p downloads

# DHT
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht.dat
wget -q https://github.com/P3TERX/aria2.conf/raw/master/dht6.dat

# Tracker
tracker_list=`curl -Ns https://trackerslist.com/all.txt | awk '$1' | tr '\n' ',' | cat`
echo "bt-tracker=$tracker_list" >> aria2c.conf
