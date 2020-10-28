#!/bin/bash
cd "$(dirname "$0")"
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
stow -R xinit alacritty bspwm dunst gtk mpd neovim newsboat picom redshift rofi zsh betterlockscreen polybar
betterlockscreen -u $HOME/.config/bspwm/wallpaper.png -b 1.4
source install_dracula_gtk.sh
