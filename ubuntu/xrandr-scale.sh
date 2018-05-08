#!/bin/sh

# Required arguments:
#   $1: Mode x.
#   $2: Mode y.
#   #3: Panning x.
#   #4: Panning y.
#   $5: Scale x.
#   $6: Scale y.
#
# Example: sh xrandr-scale.sh 1600 900 1920 1080 1.2 1.2

# Check if at least 6 arguments were passed.
if [ $# -lt 6 ]
then
    echo 'Missing arguments: mode_x mode_y panning_x panning_y scale_x scale_y
    exit 2
fi

# Scale.
xrandr --output eDP-1 --mode $1x$2 --panning $3x$4 --scale $5x$6
