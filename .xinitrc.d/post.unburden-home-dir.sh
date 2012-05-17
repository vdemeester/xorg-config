# --------------------------------------
# file:			~/.xinitrc.d/post.unburden-home-dir.sh
# author:		Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# --------------------------------------
UHD=`which unburden-home-dir`
if test -x $UHD; then
    if test -f $HOME/.unburden-home-dir; then
        UHD_FILE="$HOME/.unburden-home-dir"
    else
        UHD_FILE="/etc/unburden-home-dir"
    fi
    unburden-home-dir -C $UHD_FILE
fi
