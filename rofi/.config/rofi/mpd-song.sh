#!/bin/bash

PLAYLIST="$(mpc playlist)"

if [ "$PLAYLIST" = "" ]; then
	notify-send "MPD 蘿" "Playlist is empty"
	exit 1
fi

ROW="$(echo -e "$PLAYLIST" | grep -nx "$(mpc current)" | cut -f1 -d:)"

CHOSEN="$(echo -e "$PLAYLIST" | rofi -i -selected-row $(($ROW - 1)) -dmenu -p "Change song 蘿 ")"
if [ "$CHOSEN" != "" ]; then
	CHOSEN_ROW="$(echo -e "$PLAYLIST" | grep -nx "$CHOSEN" | cut -f1 -d:)"
	mpc play $CHOSEN_ROW
fi
