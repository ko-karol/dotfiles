#!/bin/bash

# Enhanced color picker with live hex preview
# Uses hyprpicker for live color preview while hovering

# Use hyprpicker with autocopy and format options
# -a flag automatically copies to clipboard
# -f hex flag outputs in hex format
# -r flag disables auto-exit on click (allows hovering)

COLOR=$(hyprpicker -f hex)

# Copy to clipboard
echo "$COLOR" | wl-copy

# Show notification with copied color
if command -v notify-send &> /dev/null && [ -n "$COLOR" ]; then
    notify-send "Color Picker" "Copied: $COLOR" -t 2000
fi
