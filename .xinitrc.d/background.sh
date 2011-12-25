#!/bin/sh
# Set the background (ugly right now, isn't it ?)
# TODO: some "at login" random wallpaper display.
FEH="$(which feh)"
FBSETROOT="$(which fbsetroot)"
if test -x "$FEH" && test -e $HOME/pictures/wallpaper; then
    $FEH --bg-fill $HOME/pictures/wallpaper
else
    if test -x "$FBSETROOT"; then
        $FBSETROOT -gradient Crossdiagonal -from "#eeeeee" -to "#666666"
    fi
fi
