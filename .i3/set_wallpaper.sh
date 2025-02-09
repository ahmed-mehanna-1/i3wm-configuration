#!/bin/bash

wallpaper="$SETUP_CONFIGURATIONS/.i3/background"

# Set wallpaper using feh
feh --bg-fill "$wallpaper"
echo "Wallpaper set"
