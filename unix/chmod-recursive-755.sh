#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder
#         that will be modified.
#
# Example usage: sh chmod-recursive-775.sh target/folder/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the target folder.
cd $1

# Recursively modify permissions.
chmod -R 755 .
