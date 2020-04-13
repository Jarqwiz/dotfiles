#!/bin/sh
killall -qe polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar top &
done
