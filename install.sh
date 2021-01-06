#!/bin/sh
cd "$(dirname "$0")"
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
/opt/oomox/plugins/theme_oomox/gtk-theme/change_color.sh -o afterglow "$PWD/afterglow.oomox"
/opt/oomox/plugins/icons_papirus/change_color.sh -o afterglow "$PWD/afterglow.oomox"
stow -R xinit alacritty bspwm dunst gtk neovim picom redshift rofi zsh polybar
