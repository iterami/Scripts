#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory
#         that will be modified.
#
# Example: sh chmod-recursive-775.sh target/directory/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Navigate to the target directory.
cd $1

# Recursively modify permissions.
chmod -R 755 .
