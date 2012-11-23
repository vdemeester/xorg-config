# ------------------------------------------
# file:     ~/.xinitrc.d/post.udisks-glue.sh
# author:   Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# ------------------------------------------
UDISKS_GLUE=`which udisks-glue`
if test -x $UDISKS_GLUE; then
    test -z "${UDISKS_GLUE_OPTS}" && UDISKS_GLUE_OPTS=""
    $UDISKS_GLUE $UDISKS_GLUE_OPTS &
fi
