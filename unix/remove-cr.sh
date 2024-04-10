#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to file that will be modified.
#
# Example usage: sh remove-cr.sh path/to/file.txt

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing args: path'
    exit 1
fi

sed -i 's/\r$//' $1
