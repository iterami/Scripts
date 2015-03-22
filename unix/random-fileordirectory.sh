#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory from which
#         to return a random file or directory.
#
# Example: sh random-fileordirectory.sh target/directory/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Navigate to the target directory.
cd $1

# Return a random file or directory.
ls -1 | shuf -n1
