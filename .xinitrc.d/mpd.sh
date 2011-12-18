#!/bin/sh
# Run MPD (Music Player Deamon) if the executable is available and if there is
# a mpd configuration
MPD=`which mpd`
MPDSCRIBBLE=`which mpdscribble`
if [ -x $MPD ]; then
    if [ -f "$HOME/.mpdconf" ]; then
        $MPD
        if [ -x $MPDSCRIBBLE ]; then
            if [ -f "$HOME/.mpdscribble.conf" ]; then
                mpdscribble --conf $HOME/.mpdscribble.conf
            fi
        fi
    else
        echo "No local mpd configuration, write one…"
    fi
else
    echo "No mpd. You should install it :"
    echo "sudo apt-get install mpd"
fi
