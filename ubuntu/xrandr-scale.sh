#!/bin/sh

# Required arguments:
#   $1: Scale x.
#   $2: Scale y.
#   $3: Resolution x.
#   $4: Resolution y.
#
# Example: sh xrandr-scale.sh 1.25 1.25 1600 900

# Scale.
xrandr --output eDP1 --scale $1x$2 --panning $3x$4+0+0
