#!/bin/sh
dunstctl set-paused true
betterlockscreen $1 dimblur
dunstctl set-paused false
