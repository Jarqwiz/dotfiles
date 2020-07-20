#!/bin/sh
for monitor in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$monitor polybar top &
    MONITOR=$monitor polybar bottom &
done
