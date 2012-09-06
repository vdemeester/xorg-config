# ------------------------------------------
# file:     ~/.xinitrc.d/post.redshift.sh
# author:   Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# ------------------------------------------
REDSHIFT=`which redshift`
if test -x $REDSHIFT; then
    test -z "${REDSHIFT_OPTS}" && REDSHIFT_OPTS="-l 44.83:-0.579 -g 0.9 -m vidmode"
    $REDSHIFT $REDSHIFT_OPTS &
fi
