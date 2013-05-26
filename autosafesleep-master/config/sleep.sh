#!/bin/zsh
threshold=15
percentage=$(pmset -g ps | awk '/-InternalBattery-0/ { print $2 }')
percentage=$percentage[0,-3]

if [ "$percentage" -lt "$threshold" ]; then
    pmset hibernatemode 3
else 
    pmset hibernatemode 0
fi
