#!/bin/sh

if [ -z "$(pgrep -x polybar)" ]; then
    BAR="csanadbar"
    BAR2="tray"
    for m in $(polybar --list-monitors | cut -d":" -f1); do
        MONITOR=$m polybar --reload $BAR &
        MONITOR=$m polybar --reload $BAR2 &
        sleep 2
        u=$(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*')
        kill $u
    done
else
    polybar-msg cmd restart
fi