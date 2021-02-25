#!/bin/sh
cd "$(dirname "$0")"
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
stow -R i3 alacritty dunst gtk neovim picom redshift rofi zsh betterlockscreen
betterlockscreen -u "$PWD/wallpaper.jpg" -b 1.4
