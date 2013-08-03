#!/bin/sh
command -v git-annex >/dev/null && {
    git annex assistant --autostart
}
