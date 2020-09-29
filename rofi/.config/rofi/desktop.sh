#!/bin/bash

desktops="$(bspc query -D --names)"
current_desktop="$(bspc query -D -d --names)"

row="$(echo -e "$desktops" | grep -nx "$current_desktop" | cut -f1 -d:)"

occupied_desktops="$(bspc query -D -d '.occupied' --names | paste -sd "|" -)"
pretty_desktops="$(echo "$desktops" | sed -r "s/^($occupied_desktops)$/& - Occupied/g")"

chosen="$(echo -e "$pretty_desktops" | rofi -i -selected-row $(($row - 1)) -dmenu -p "Select desktop  ")"
if [ "$chosen" != "" ]; then
	chosen_row="$(echo -e "$pretty_desktops" | grep -nx "$chosen" | cut -f1 -d:)"
	bspc desktop -f "^$chosen_row"
fi
