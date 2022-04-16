#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the target folder.
#
# Example usage: sh count-folder-contents.sh target/folder/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the target folder.
cd $1

# Content the contents of this folder
#   including the folder.
find . | wc -l
