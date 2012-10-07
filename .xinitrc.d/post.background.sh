#!/bin/sh
# Set the background (ugly right now, isn't it ?)
# TODO: some "at login" random wallpaper display.
if test -z "$FROM_SLIM"; then
    FEH="$(which feh)"
    FBSETROOT="$(which fbsetroot)"
    # Get pictures folder from xdg-user-dir if available
    command -v xdg-user-dir >/dev/null && {
        PICTURES="$(xdg-user-dir PICTURES)"
    }
    # Set a default value as $HOME/pictures/
    test -z "${PICTURES}" && PICTURES="$HOME/pictures"
    if test -x "$FEH" && test -e $PICTURES/wallpaper; then
        $FEH --bg-fill $PICTURES/wallpaper
    else
        if test -x "$FBSETROOT"; then
            $FBSETROOT -gradient Crossdiagonal -from "#eeeeee" -to "#666666"
        fi
    fi
fi
