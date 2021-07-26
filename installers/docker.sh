#!/usr/bin/env bash

sudo apt-get install docker docker-compose -y

sudo groupadd docker

sudo gpasswd -a $USER docker
