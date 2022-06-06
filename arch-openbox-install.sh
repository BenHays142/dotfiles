#!/bin/bash

echo "Updating pkg cache and updating system..."
sudo pacman -Syy
sudo pacman -Syu

# Installing prerequisites
echo "Installing preqrequsites..."
sudo pacman -S git sudo base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Installing X-server..."
sudo pacman -S xorg-server

# Installing applications
echo "Installing applications..."
sudo pacman -S lightdm lightdm-gtk-greeter openbox obconf pcmanfm tint2 lxappearance alacritty xterm nitrogen neovim

# Installing AUR Packages
echo "Installing optional packages + AUR..."
yay -S firefox keypassxc obmenu lutris qbittorrent thunderbird ttf-dejavu nerd-fonts-fira-code

# Copying .config
echo "Copying .config folder..."
cp -r .config ~/

# Installing and configuring zsh
echo "Installing and configuring zsh + oh-my-zsh..."
cp .zshrc ~/
cp -r .oh-my-zsh ~/

# Installing openbox theme
echo "Installing OpenBox + GTK theme"
sudo cp -r dt-dark-theme-master /usr/share/themes/


