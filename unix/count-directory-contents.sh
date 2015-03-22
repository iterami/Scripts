#!/bin/sh

# Required arguments:
#   $1: Relative path to the target directory.
#
# Example: sh count-directory-contents.sh target/directory/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Navigate to the target directory.
cd $1

# Content the contents of this directory
#   including the directory.
find . | wc -l
