#!/bin/sh
command -v git-annex >/dev/null && {
    for dir in $(cat $HOME/.config/git-annex/autostart); do
        cd $dir
        git annex webapp --listen 0.0.0.0:88888 &
    done
    # git annex assistant --autostart
}
