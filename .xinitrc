# --------------------------------------
# file:			~/.xinitrc
# author:		Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# --------------------------------------

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
ck-launch-session xmonad & wmpid=$!

# Then, the rest
xinitrc_d_run "post."

wait $wmpid
