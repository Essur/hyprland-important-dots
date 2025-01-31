#!/bin/bash

# Run hyprpicker and save the color to a variable
color=$(hyprpicker)

# If a color was picked, copy it to the clipboard and display a notification
if [ -n "$color" ]; then
    echo "$color" | wl-copy
    notify-send "HyprPicker" "Color $color copied to clipboard"
    echo $color
else
    echo "Pick canceled"
fi
