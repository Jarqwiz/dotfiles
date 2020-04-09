#!/bin/sh
feh -Z "$1" || mpv --ytdl-format="best[height<=1080]" "$1" || firefox "$1"
