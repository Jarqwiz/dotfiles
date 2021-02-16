#!/bin/sh
cd "$(dirname "$0")"
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
stow -R alacritty bspwm dunst gtk neovim picom redshift rofi zsh polybar betterlockscreen
betterlockscreen -u "$PWD/wallpaper.png" -b 1.4
