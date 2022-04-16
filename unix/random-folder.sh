#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder from
#         which to return a random folder.
#
# Example usage: sh random-folder.sh target/folder/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Return a random folder from the target folder.
find $1 -maxdepth 1 -mindepth 1 -type d -exec basename {} \; | shuf -n1
