#!/bin/bash

current_id="$(bspc query -N -n)"
if [ "$current_id" = "" ]; then
	notify-send "No current window"
	exit 1
fi

window_name="$(xwininfo -id $current_id | awk -F'"' 'NR==2 {print $2}')"

bspc node -d "^$1"
notify-send -u low "Window moved to desktop $1" "$window_name"
