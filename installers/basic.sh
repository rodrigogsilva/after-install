#!/usr/bin/env bash

APPS="apt-transport-https ca-certificates cheese chrome-gnome-shell curl dconf-cli dirmngr dotnet-sdk-5.0 ffmpegthumbnailer flameshot git gnome-mpv gnome-shell-extensions gnome-tweak-tool gnupg gnupg-agent lutris mono-complete obs-studio openjdk-11-jdk papirus-icon-theme peek playonlinux preload python3-pip qbittorrent software-properties-common steam transmission ubuntu-restricted-extras unzip viewnior vim zram-config zsh zsh-syntax-highlighting"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo add-apt-repository ppa:papirus/papirus -y
sudo add-apt-repository ppa:lutris-team/lutris -y
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

for app in $APPS
do
    echo "installing $app"

    sleep 3

    sudo apt install $app -y
done

