#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the directory in which the
#         iterami repositories are stored.
#   $2: String to grep.
#
# Example usage: sh grep-iterami-repositories.sh iterami_repositories/ "string"

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path string'
    exit 1
fi

# Navigate to the target directory.
cd $1

# grep.
grep -lr --exclude-dir=.git $2
