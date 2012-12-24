#!/bin/sh
# Run gollum if present and if desktop/wiki if present too.
# TODO: Verify if it is not already running
command -v gollum && {
    command -v xdg-user-dir >/dev/null && {
        DESKTOP="$(xdg-user-dir DESKTOP)"
    }
    test -z "${DESKTOP}" && DESKTOP="$HOME/Desktop"
    if test -d "${DESKTOP}/wiki"; then
        gollum "${DESKTOP}/wiki" &
    fi
}
