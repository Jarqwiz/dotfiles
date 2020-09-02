#!/bin/sh
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
stow -R alacritty bspwm dunst gtk mpd neovim newsboat picom polybar redshift rofi zsh betterlockscreen
betterlockscreen -u $HOME/.config/bspwm/wallpaper.png -b 1.4
