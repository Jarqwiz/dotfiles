#!/bin/sh
pgrep -x mpd > /dev/null || mpd
killall -qe mpd-notification
mpd-notification -m $HOME/Music -p 6600
