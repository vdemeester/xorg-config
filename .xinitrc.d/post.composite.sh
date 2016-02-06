#!/bin/sh
# Enable a composite manager if present.
COMPTON=`which compton`

if [ -x $COMPTON ]; then
    $COMPTON &
else
    echo "No compton. You might want to get it : https://github.com/chjj/compton"
fi
