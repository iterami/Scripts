#!/bin/sh

# Required arguments:
#   $1: Scale x.
#   $2: Scale y.
#   $3: Resolution x.
#   $4: Resolution y.
#
# Example: sh xrandr-scale.sh 1.25 1.25 1600 900

# Check if at least 3 arguments were passed.
if [ $# -lt 4 ]
then
    echo 'Missing arguments: scale_x scale_y resolution_x resolution_y'
    exit 2
fi

# Scale.
xrandr --output eDP-1 --scale $1x$2 --panning $3x$4+0+0
