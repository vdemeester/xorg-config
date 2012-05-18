# ------------------------------------------
# file:     ~/.xinitrc.d/post.xcompmgr.sh
# author:   Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# ------------------------------------------
XCOMPMGR=`which xcompmgr`
if test -x $XCOMPMGR; then
    test -z "${XCOMPMGR_OPTS}" && XCOMPMGR_OPTS="-r4 -o0.4 -l1 -t1 -c"
    $XCOMPMGR $XCOMPMGR_OPTS &
fi
