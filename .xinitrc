# --------------------------------------
# file:			~/.xinitrc
# author:		Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# --------------------------------------

systemd --user &

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

xinitrc_d_run "pre."

# Run the WM first
# and start XMonad
env > /tmp/session-launch-env.log
if test -n "$FROM_SLIM"; then
    xmonad & wmpid=$!
else
    ck-launch-session xmonad & wmpid=$!
fi

# Then, the rest
xinitrc_d_run "post."

wait $wmpid
