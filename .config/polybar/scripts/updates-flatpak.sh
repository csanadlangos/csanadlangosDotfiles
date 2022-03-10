#!/bin/sh
# CREDIT:
# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/updates-flatpak
updates=$(echo 'n' | flatpak update 2>/dev/null | tail -n +5 | head -2 | wc -l)

if [ "$updates" -gt 0 ]; then
    echo "flatpak: $updates"
else
    echo ""
fi