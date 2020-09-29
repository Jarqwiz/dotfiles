#!/bin/bash

playlist="$(mpc playlist)"

if [ "$playlist" = "" ]; then
	notify-send "MPD 蘿" "Playlist is empty"
	exit 1
fi

row="$(echo -e "$playlist" | grep -nx "$(mpc current)" | cut -f1 -d:)"

chosen="$(echo -e "$playlist" | rofi -i -selected-row $(($row - 1)) -dmenu -p "Change song 蘿 ")"
if [ "$chosen" != "" ]; then
	chosen_row="$(echo -e "$playlist" | grep -nx "$chosen" | cut -f1 -d:)"
	mpc play $chosen_row
fi
