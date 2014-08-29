# ------------------------------------------
# file:     ~/.xinitrc.d/post.pulseaudio.sh
# author:   Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# ------------------------------------------
PULSEAUDIO=`which pulseaudio`
PASYSTRAY=`which pasystray`
if test -x $PULSEAUDIO; then
    $PULSEAUDIO $UDISKIE_OPTS --start &
    if test -x $PASYSTRAY; then
        $PASYSTRAY &
    fi
fi
