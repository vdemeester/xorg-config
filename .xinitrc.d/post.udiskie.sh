# ------------------------------------------
# file:     ~/.xinitrc.d/post.udisks-glue.sh
# author:   Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# ------------------------------------------
UDISKIE=`which udiskie`
if test -x $UDISKIE; then
    test -z "${UDISKIE_OPTS}" && UDISKIE_OPTS="--tray"
    $UDISKIE $UDISKIE_OPTS &
fi
