#!/bin/bash
BATTERY=$(acpi -bt | cut -d' ' -f3-)
notify-send -h string:x-canonical-private-synchronous:battery-notification " Battery" "$BATTERY"
