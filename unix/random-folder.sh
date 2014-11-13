#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder from
#         which to return a random folder.
#
# Example: sh random-folder.sh target/folder/

# Check if at least 1 argument was passed.
if [ $# -lt 2 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Return a random folder from the target folder.
find $1 -maxdepth 1 -mindepth 1 -type d -exec basename {} \; | shuf -n1
