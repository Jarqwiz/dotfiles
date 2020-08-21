#!/bin/sh
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
stow -R alacritty bspwm dunst gtk mpd neovim newsboat picom polybar qutebrowser redshift rofi zsh
betterlockscreen -u $HOME/.config/bspwm/wallpaper.jpg -b 1.4
