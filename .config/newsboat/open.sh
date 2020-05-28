#!/bin/sh
(
    feh -Z "$1" || mpv --ytdl-format="best[height<=1080]" "$1" || xdg-open "$1"
) &> /dev/null &
