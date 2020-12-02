#!/bin/sh
set -eu

# Optional args:
#   $1: Number of seconds to caffeinate for.
#
# Example usage: sh caffeinate.sh 3600

# If no args were passed, use 3600.
if [ $# -lt 1 ]
then
    caffeinate -d -t 3600

# Otherwise use arg.
else
    caffeinate -d -t $@
fi
