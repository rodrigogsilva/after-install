#!/usr/bin/env bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" -y

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y

sudo groupadd docker

sudo gpasswd -a $USER docker
