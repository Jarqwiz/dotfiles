#!/bin/bash

desktop_name="$(bspc query -D -d --names)"
current_id="$(bspc query -N -n)"
if [ "$current_id" = "" ]; then
	notify-send "No current window at desktop $desktop_name"
	exit 1
fi

window_name="$(xwininfo -id $current_id | awk -F'"' 'NR==2 {print $2}')"
notify-send "Current window at desktop $desktop_name" "$window_name"
