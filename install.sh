#!/usr/bin/env bash

if [ $(whoami) != 'root' ]; then
    echo "This script uses alot of root comands, so please, run this with 'sudo'"
    exit 1;
fi

chomod +x -R installers

install() {
    echo "INSTALLING $1"

    sleep 10

    sudo ./installers/$2

    clear

    echo "$1 INSTALLED"
}

FILES=$(ls installers)

for file in $FILES
do
    install $file $file
done

echo "Configurating git globals"

git config --global user.name "Rodrigo Gonçalves"
git config --global user.email "rodrigogoncalveess@gmail.com"

echo "Copying dotfiles"

cp -iv dotfiles/.alias ~/.alias
cp -iv dotfiles/.zshrc ~/.zshrc
cp -iv dotfiles/.exports ~/.exports

echo "
Gnome extensions : 
AlternateTab
Dash to Dock
Removable Drive Menu
Sound Input & Output Device Chooser
User Themes
"

echo "
Duties :
create new ssh key
create new pgp key
config flameshot
install node and yarn
"