# --------------------------------------
# file:			~/.xinitrc
# author:		Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# --------------------------------------
# Load .Xdefaults
xrdb -merge ~/.Xdefaults
# Set better defailt cursor for X
xsetroot -cursor_name left_ptr
# hide curson
unclutter -idle 5 &
# Autostart programs
if [ -d $HOME/.xinitrc.d ] ; then
    for f in $HOME/.xinitrc.d/*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
# and start XMonad
HOSTNAME=$(hostname)
if test "${HOSTNAME}" = "vinnsento"; then
    # On vinnsento kdm is started with console kit session support, there is
    # no need to re-exec it (and it won't work as expected if executed).
    exec xmonad
else
    exec ck-launch-session xmonad
fi
