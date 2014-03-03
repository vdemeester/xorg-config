#!/bin/sh
# urxvtd is a terminal emulation daemon for urxvt. Invoking an urxvt(c) 
# terminal is quicker and lighter (I think)
URXVTD=`which urxvtd`
if [ -x $URXVTD ]; then
    # Set env RXVT_SOCKET to .local/run !
    if [ ! -d $HOME/run ]; then
        mkdir -p $HOME/run
    fi
    export RXVT_SOCKET=$HOME/run/rxvt-unicode-$(hostname)
    $URXVTD -q -o -f
else
    echo "No urxvtd. You should install it :"
    echo "sudo apt-get install rxvt-unicode"
fi
