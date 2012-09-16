#!/bin/sh
# Start xscreensaver if available
command -v gnome-screensaver && {
    gnome-screensaver
}
