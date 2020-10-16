#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk -F '[[:space:]]*' '{printf "%.01f%%", 100-$8}')
MEM=$(free | grep "Mem" | awk -F '[[:space:]]*' '{printf "%.01f%%", $3/$2*100}')
notify-send -h string:x-canonical-private-synchronous:usage-notification "Usage" " Cpu $CPU\n Memory $MEM"
