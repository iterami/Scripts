#!/bin/sh

# Required args:
#   $1: Relative path to the target directory.
#
# Example usage: sh count-directory-contents.sh target/directory/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 2
fi

# Navigate to the target directory.
cd $1

# Content the contents of this directory
#   including the directory.
find . | wc -l
