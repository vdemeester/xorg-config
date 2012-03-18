#!/bin/sh
# Start notification-daemon

STATNOT="$(which statnot)"
ARGS=""
if test -x "$STATNOT"; then
    # First, we kill notification-daemon
    killall notification-daemon &> /dev/null
    # Then we start it
    if test -f "$HOME/.statnot"; then
        ARGS="$HOME/.statnot"
    fi
    $STATNOT $ARGS 2>&1 >/dev/null &
fi
