#!/bin/bash

playlists="$(mpc lsplaylists)"

if [ "$playlists" = "" ]; then
	notify-send "MPD 蘿" "No playlists available"
	exit 1
fi

chosen="$(echo -e "$playlists" | rofi -i -dmenu -p "Change playlist 蘿 ")"
if [ "$chosen" != "" ]; then
	mpc clear
	mpc load "$chosen"
	mpc play
fi
