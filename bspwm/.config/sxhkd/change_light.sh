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
REAL_LIGHT=$(light -G 2>/dev/null)
LIGHT="$(( ${LIGHT//.} ))"
notify-send -h string:x-canonical-private-synchronous:light-notification "$ICON Light" "$LIGHT %"
