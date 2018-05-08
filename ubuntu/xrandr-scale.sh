#!/bin/sh

# Required arguments:
#   $1: Output.
#   $2: Mode x.
#   $3: Mode y.
#   #4: Panning x.
#   #5: Panning y.
#   $6: Scale x.
#   $7: Scale y.
#
# Example: sh xrandr-scale.sh 1600 900 1920 1080 1.2 1.2

# Check if at least 6 arguments were passed.
if [ $# -lt 7 ]
then
    echo 'Missing arguments: output mode_x mode_y panning_x panning_y scale_x scale_y'
    exit 2
fi

# Scale.
xrandr --output $1 --mode $2x$3 --panning $4x$5 --scale $6x$7
