#!/bin/bash
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
stow -R xinit alacritty bspwm dunst gtk mpd neovim newsboat picom redshift rofi zsh betterlockscreen polybar
betterlockscreen -u $HOME/.config/bspwm/wallpaper.jpg -b 1.4
