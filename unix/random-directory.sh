#!/bin/sh
set -eu

# Required args:
#   $1: Relative path to the directory from
#         which to return a random directory.
#
# Example usage: sh random-directory.sh target/directory/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Return a random directory from the target directory.
find $1 -maxdepth 1 -mindepth 1 -type d -exec basename {} \; | shuf -n1
