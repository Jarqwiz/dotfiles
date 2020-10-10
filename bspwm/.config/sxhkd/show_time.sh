#!/bin/bash
TIME=$(date +%H:%M:%S)
DATE=$(date +%Y-%m-%d)
INDEX=$(date +%l)
ICONS=(           )
notify-send -h string:x-canonical-private-synchronous:time-notification "${ICONS[$(($INDEX - 1))]} $TIME" " $DATE"
