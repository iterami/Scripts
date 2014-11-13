#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder from which
#         to return a random file or folder.
#
# Example: sh random-fileorfolder.sh target/folder/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Navigate to the target folder.
cd $1

# Return a random file or folder.
ls -1 | shuf -n1
