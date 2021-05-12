#!/usr/bin/env bash

echo "You should've update golang before hand btw..."

sleep 3

wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz -O golang.tar.gz

sudo rm -rf /usr/local/go && tar -C /usr/local -xzf golang.tar.gz

rm -rf golang.tar.gz