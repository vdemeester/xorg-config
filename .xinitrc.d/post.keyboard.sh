#!/bin/sh
# Set Keyboard to bépo !
setxkbmap fr bepo-sbr
# Disable Capslock and map it to escape
setxkbmap -option compose:caps
# Enable CTRL+ALT+BACKSPACE to terminate X
setxkbmap -option terminate:escape
if test "$(hostname)" = "vinnsento"; then
    # vinnsento is a macbook so we switch the left alt and the win (Compose) keys
    setxkbmap -option altwin:swap_lalt_lwin
fi
# call Xmodmap
xmodmap ~/.Xmodmap

