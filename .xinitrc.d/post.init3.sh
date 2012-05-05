# --------------------------------------
# file:			~/.xinitrc.d/pre.cursor.sh
# author:		Vincent Demeester
# vim:nu:ai:si:et:ts=4:sw=4:ft=sh
# --------------------------------------

# Switch to runlevel 3 after the login.
# Explanation : By default, Debian start in runlevel 2 and does not
# use runlevels 3-5. The idea is to keep the runlevel 2 as small as
# possible in order to have the fastest boot time possible and then
# run others levels if needed.
#
# Here, runlevel 3 is the default runlevel for a desktop use, and should
# be start as soon as the user logs in.
# It is runned with X (using xinitrc) Xorg is automatically start when
# logging in.
if test -x $HOME/bin/init3; then
    sudo $HOME/bin/init3
fi
