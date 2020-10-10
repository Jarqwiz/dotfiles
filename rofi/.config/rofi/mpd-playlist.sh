#!/bin/bash

PLAYLISTS="$(mpc lsplaylists)"

if [ "$PLAYLISTS" = "" ]; then
	notify-send "MPD 蘿" "No playlists available"
	exit 1
fi

CHOSEN="$(echo -e "$PLAYLISTS" | rofi -i -dmenu -p "Change playlist 蘿 ")"
if [ "$CHOSEN" != "" ]; then
	mpc clear
	mpc load "$CHOSEN"
	mpc play
fi
