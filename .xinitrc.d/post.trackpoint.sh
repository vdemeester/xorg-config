#!/bin/sh
# If were on Thinkpad (or at least having a Trackpoint)
if [ -f /usr/bin/xinput ]; then
    tp=`/usr/bin/xinput list | grep "TPPS/2 IBM TrackPoint"`
    echo $tp
    if [ -n "$tp" ]; then
        # Trackpoint is on, let's play with xinput
        # Vertical scrolling
        xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
        xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
        # Horizontal scrolling (with vertical enabled)
        xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5
    fi
fi

