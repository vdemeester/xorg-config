#!/bin/sh
# Start pamusb-agent if present (for fun stuff)
command -v pamusb-agent && {
    pamusb-agent &
}
