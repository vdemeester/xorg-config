#!/bin/sh
# Run gollum if present and if desktop/wiki if present too.
# TODO: Verify if it is not already running
command -v supervisord>/dev/null && {
    test -e "${XDG_CONFIG_HOME}/supervisord/supervisord.conf" && {
        supervisord -c "${XDG_CONFIG_HOME}/supervisord/supervisord.conf"
    }
}
