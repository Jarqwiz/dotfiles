#!/bin/sh
TITLE=$(playerctl metadata title 2>/dev/null || echo "No title")
ARTIST=$(playerctl metadata artist 2>/dev/null || echo "No artist")
ALBUM=$(playerctl metadata album 2>/dev/null || echo "No album")
echo " $TITLE ﴁ $ARTIST  $ALBUM"
