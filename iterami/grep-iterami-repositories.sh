#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which the
#         iterami repositories are stored.
#   $2: String to grep.
#
# Example usage: sh grep-iterami-repositories.sh iterami_repositories/ "test"

# Check if at least 2 arguments were passed.
if [ $# -lt 2 ]
then
    echo 'Missing arguments: path string'
    exit 2
fi

# Navigate to the target directory name.
cd $1

# grep.
grep -lr --exclude-dir=.git $2
