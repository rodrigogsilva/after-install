#!/usr/bin/env bash

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/dracula/gnome-terminal

cd gnome-terminal

./install.sh

cd ..

rm -rf gnome-terminal

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

curl -L -O https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip

unzip Fira_Code_v5.2.zip

mkdir -p ~/.local/share/fonts

mv ttf/* ~/.local/share/fonts/

rm Fira_Code_v5.2.zip specimen.html README.txt fira_code.css

rm -rf ttf woff woff2 variable_ttf

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting