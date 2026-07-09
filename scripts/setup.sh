#!/bin/bash

sudo pacman -Syy

sudo pacman -S curl base-devel

sudo pacman -S git github-cli

git config --global user.name "morelia-dev"
git config --global user.email "morelia-dev@protonmail.com"

sudo pacman -S nmtui

sudo pacman -S i3-wm
cp -r ../configs/i3 ~/.config/i3

sudo pacman -S xdg-desktop-portal

./install_fonts.sh
./install_fonts_cjk.sh

sudo pacman -S alacritty
cp -r ../configs/alacritty ~/.config/

sudo pacman -S helix
cp -r ../configs/helix ~/.config/

sudo pacman -S fastfetch
cp -r ../configs/fastfetch ~/.config/

sudo pacman -S picom
cp -r ../configs/picom ~/.config/

sudo pacman -S rofi
cp -r ../configs/rofi ~/.config/

sudo pacman -S pavucontrol

sudo pacman -S firefox
cp -r ../configs/firefox ~/.config/

sudo pacman -S obsidian blender

sudo pacman -S krita
cp ../configs/kritarc ../configs/kritadisplayrc ../configs/kritashortcutsrc  ~/.config/
