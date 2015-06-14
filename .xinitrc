# --------------------------------------
# file:			~/.xinitrc
# author:		Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# --------------------------------------

# systemd --user &

# Run stuff from .xinitrc.d with the given prefix
xinitrc_d_run() {
    prefix=$1
    if [ -d $HOME/.xinitrc.d ] ; then
        for f in $HOME/.xinitrc.d/${prefix}*.sh ; do
            [ -x "$f" ] && . "$f"
        done
        unset f
    fi
}

DBUS_FILE=/etc/X11/xinit/xinitrc.d/30-dbus
test -x $DBUS_FILE && . $DBUS_FILE

xinitrc_d_run "pre."

# Run the WM first
# and start XMonad
env > /tmp/session-launch-env.log
#ck-launch-session awesome & wmpid=$!
i3 & wmpid=$!
#awesome & wmpid=$!

# Then, the rest
xinitrc_d_run "post."

wait $wmpid
