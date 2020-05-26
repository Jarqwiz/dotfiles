#!/bin/sh
i=1
for monitor in $(bspc query -M); do
    bspc monitor $monitor \
        -d $i/{1,2,3,4,5,6,7,8,9,10}
    let i++
done
