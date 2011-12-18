#!/bin/sh
# urxvtd is a terminal emulation daemon for urxvt. Invoking an urxvt(c) 
# terminal is quicker and lighter (I think)
KWALLETD=`which kwalletd`
if [ -x $KWALLETD ]; then
    $KWALLETD
else
    echo "No kwalletd. You should install it :"
fi
