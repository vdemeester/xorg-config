#!/bin/sh
# Start xscreensaver if available
command -v xscreensaver && {
    xscreensaver --no-splash &
}
