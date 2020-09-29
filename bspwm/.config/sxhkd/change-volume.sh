#!/bin/bash

case $1 in
up)
	pulseaudio-ctl up
	;;
down)
	pulseaudio-ctl down
	;;
mute)
	pulseaudio-ctl mute
	;;
esac

pulse_status="$(pulseaudio-ctl full-status)"
pulse_mute="$(echo "$pulse_status" | cut -f2 -d" ")"
pulse_volume="$(echo "$pulse_status" | cut -f1 -d" ")%"

if [ "$1" = "status" ]; then
	notify-send "Volume" "$pulse_volume\nMute: $pulse_mute"
	exit
fi

if [ "$1" != "mute" ]; then
	notify-send -t 1000 "Volume" "$pulse_volume"
else
	notify-send "Toggled mute" "Mute: $pulse_mute"
fi
