#!/bin/bash
case $1 in
stat)
	ICON="蓼"
	;;
up)
	ICON=""
	pulseaudio-ctl up
	;;
down)
	ICON=""
	pulseaudio-ctl down
	;;
mute)
	ICON=""
	pulseaudio-ctl mute
	;;
esac
STATUS=$(pulseaudio-ctl full-status)
VOLUME=$(echo $STATUS | cut -d' ' -f1)
MUTE=$(echo $STATUS | cut -d' ' -f2)
notify-send -h string:x-canonical-private-synchronous:volume-notification "$ICON Volume" "$VOLUME% - muted: $MUTE"
canberra-gtk-play -i audio-volume-change -d "changeVolume"
