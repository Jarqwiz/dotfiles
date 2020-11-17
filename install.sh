#!/bin/sh
cd "$(dirname "$0")"
yay --nocleanmenu --nodiffmenu --noeditmenu --noupgrademenu --needed -S $(cat aur.txt)
/opt/oomox/plugins/theme_oomox/gtk-theme/change_color.sh -o forest-night "$PWD/forest-night.oomox"
/opt/oomox/plugins/icons_papirus/change_color.sh -o forest-night "$PWD/forest-night.oomox"
stow -R xinit alacritty bspwm dunst gtk mpd neovim newsboat picom redshift rofi zsh betterlockscreen polybar
betterlockscreen -u $HOME/.config/bspwm/wallpaper.jpg -b 1.4
