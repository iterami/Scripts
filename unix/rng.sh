#!/bin/sh
set -eu

# Required args:
#   $1: Minimum integer (inclusive).
#   $2: Maximum integer (inclusive).
#   $3: Number of integers to generate.
#
# Example usage: sh rng.sh 0 9 10

# Check if at least 3 args were passed.
if [ $# -lt 3 ]
then
    echo 'Missing args: min max repeat'
    exit 1
fi

# Generate pseudorandom integers.
shuf -i $1-$2 -n $3
