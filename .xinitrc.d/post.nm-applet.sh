# ------------------------------------------
# file:     ~/.xinitrc.d/post.udisks-glue.sh
# author:   Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# ------------------------------------------
NM_APPLET=`which nm-applet`
if test -x $NM_APPLET; then
    test -z "${NM_APPLET_OPTS}" && NM_APPLET_OPTS=""
    $NM_APPLET $NM_APPLET_OPTS &
fi
