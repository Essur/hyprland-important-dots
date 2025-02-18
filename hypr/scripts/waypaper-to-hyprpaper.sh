#!/bin/bash

WAYPAPER_CONFIG="$HOME/.config/waypaper/config.ini"
HYPERPAPER_CONFIG="$HOME/.config/hypr/hyprpaper.conf"

# Extract wallpaper path and remove leading/trailing whitespace
WALLPAPER=$(grep "^wallpaper" "$WAYPAPER_CONFIG" | cut -d'=' -f2 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' | sed "s|^~|$HOME|")

# Check if the wallpaper file exists
if [[ -f "$WALLPAPER" ]]; then
  # Update Hyprpaper config
  echo "preload = $WALLPAPER" >"$HYPERPAPER_CONFIG"
  echo "wallpaper = , $WALLPAPER" >>"$HYPERPAPER_CONFIG"

  # Restart Hyprpaper to apply changes
  pkill hyprpaper
  hyprpaper &
else
  echo "Error: Wallpaper file not found!"
fi
