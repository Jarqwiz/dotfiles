#!/bin/sh
killall -q polybar
for monitor in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$monitor polybar top &
done
