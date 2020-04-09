#!/bin/bash

option0=" lock"
option1=" logout"
option2="⏼ suspend"
option3=" reboot"
option4=" shutdown"

options="$option0\n$option1\n$option2\n$option3\n$option4"

chosen="$(echo -e "$options" | rofi -lines 5 -width 10 -dmenu -p "Power")"
case $chosen in
    $option0)
        sxlock;;
    $option1)
        bspc quit;;
    $option2)
        systemctl suspend;;
    $option3)
        reboot;;
    $option4)
        poweroff;;
esac
