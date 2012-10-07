#!/bin/sh
# Start dunst if available
command -v dunst && {
    dunst &
}
