#!/bin/sh
cd "$(dirname "$0")"
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
/opt/oomox/plugins/theme_oomox/gtk-theme/change_color.sh -o moonfly "$PWD/moonfly.oomox"
/opt/oomox/plugins/icons_papirus/change_color.sh -o moonfly "$PWD/moonfly.oomox"
stow -R alacritty bspwm dunst gtk neovim picom redshift rofi zsh polybar
