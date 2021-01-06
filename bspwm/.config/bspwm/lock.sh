#!/bin/sh
playerctl pause &
killall -SIGUSR1 dunst
physlock -m -p "Don't touch my computer!"
killall -SIGUSR2 dunst
