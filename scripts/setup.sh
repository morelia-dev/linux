#!/bin/bash

sudo pacman -Syy

sudo pacman -S base-devel nano bash curl wget unzip helix rust

sudo pacman -S git github-cli

git config --global user.name "morelia-dev"
git config --global user.email "morelia-dev@protonmail.com"

sudo pacman -S i3-wm xdg-desktop-portal

./install_fonts.sh
./install_fonts_cjk.sh

sudo pacman -S alacritty feh fastfetch picom rofi firefox obsidian blender krita
./compile_aseprite.sh

./copy_configs.sh
