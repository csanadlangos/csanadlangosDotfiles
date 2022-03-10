#!/bin/sh
# CREDIT:
# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/dunst-snooze
case "$1" in
    --toggle)
        dunstctl set-paused toggle
        ;;
    *)
        if [ "$(dunstctl is-paused)" = "true" ]; then
            echo "%{F#6684a7}"
        else
            echo "%{F#6684a7}"
        fi
        ;;
esac