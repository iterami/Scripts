#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the directory of the
#         repository you wish to grep.
#   $2: String to grep.
#
# Example usage: sh grep-cloned-repo.sh repository/ "string"

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path string'
    exit 1
fi

# Navigate to the repository root directory.
cd $1

# grep.
grep -lr --exclude-dir=.git $2
