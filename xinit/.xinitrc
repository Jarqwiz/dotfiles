xset r rate 300 50
xrdb -merge $HOME/.Xresources
$HOME/.screenlayout/default.sh
exec bspwm
