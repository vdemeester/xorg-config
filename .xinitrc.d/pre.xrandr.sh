# Run xrandr with specific stuff on machine(s)
# Let's do the hard way for now

test $(hostname) = "honshu" && {
    xrandr --output eDP1 --mode 1600x900 --output VGA1 --auto --right-of eDP1
}
