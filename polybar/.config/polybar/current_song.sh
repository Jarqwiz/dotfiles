#!/bin/sh
TITLE=$(playerctl metadata title 2>/dev/null)
ARTIST=$(playerctl metadata artist 2>/dev/null)
ALBUM=$(playerctl metadata album 2>/dev/null)

output=()

if [ -n "$TITLE" ]; then
	output+=(" $TITLE")
fi

if [ -n "$ARTIST" ]; then
	output+=("ﴁ $ARTIST")
fi

if [ -n "$ALBUM" ]; then
	output+=(" $ALBUM")
fi

echo "${output[*]}"
