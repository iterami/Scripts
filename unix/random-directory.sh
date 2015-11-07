#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory from
#         which to return a random directory.
#
# Example: sh random-directory.sh target/directory/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Return a random directory from the target directory.
find $1 -maxdepth 1 -mindepth 1 -type d -exec basename {} \; | shuf -n1
