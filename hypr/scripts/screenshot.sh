#!/bin/bash

# Create screenshots directory if it doesn't exist
mkdir -p ~/Pictures/Screenshots

# Define filename with timestamp
FILENAME=~/Pictures/Screenshots/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png

# Take screenshot and save it
# grimblast save screen "$FILENAME"
grimblast save area "$FILENAME"

# Check if screenshot was actually created
if [[ ! -f "$FILENAME" ]]; then
  exit 1 # Exit if the screenshot was canceled
fi

# Copy to clipboard
wl-copy <"$FILENAME"

# Notify the user
notify-send "Screenshot saved!" "Saved to $FILENAME and copied to clipboard."
