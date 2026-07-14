#!/bin/bash

brightness=$(brightnessctl get)
max=$(brightnessctl max)

percent=$((brightness * 100 / max))

if [ "$percent" -le 25 ]; then
    icon="󰃞"
elif [ "$percent" -le 60 ]; then
    icon="󰃟"
else
    icon="󰃠"
fi

echo "{\"text\":\"$icon\", \"tooltip\":\"Brightness: ${percent}%\"}"
