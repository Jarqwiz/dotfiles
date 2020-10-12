#!/bin/bash
case $1 in
stat)
	ICON=""
	;;
up)
	light -A 5
	ICON=""
	;;
down)
	light -U 5
	ICON=""
	;;
esac
LIGHT=$(light -G)
notify-send -h string:x-canonical-private-synchronous:light-notification "$ICON Light" "$LIGHT%"
