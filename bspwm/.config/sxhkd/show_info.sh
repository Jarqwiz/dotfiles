#!/bin/bash
set -o pipefail
WINDOW_ID=$(bspc query -N -n)
DESKTOP=$(bspc query -D -d --names)
WINDOW_NAME=$( (xwininfo -id $WINDOW_ID | head -n2 | tail -n1 | cut -d'"' -f2- | head -c-2) || echo No window)
notify-send -h string:x-canonical-private-synchronous:info-notification "$WINDOW_NAME" "  $DESKTOP"
