#!/usr/bin/env bash

# Set zsh as default

chsh -s $(which zsh)

# Install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Install dracula theme on Gnome Terminal

git clone https://github.com/dracula/gnome-terminal

cd gnome-terminal

./install.sh

cd ..

rm -rf gnome-terminal

# Add Fira Code font

curl -L -O https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip

unzip Fira_Code_v5.2.zip

mkdir -p ~/.local/share/fonts

mv ttf/* ~/.local/share/fonts/

rm Fira_Code_v5.2.zip specimen.html README.txt fira_code.css

rm -rf ttf woff woff2 variable_ttf

# Install Oh-my-zsh plugins

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
