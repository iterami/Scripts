#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder in which
#         the iterami repos are stored.
#   $2: String to grep.
#
# Example usage: sh grep-iterami-repos.sh iterami_repos/ "string"

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path string'
    exit 1
fi

# Navigate to the target folder.
cd $1

# grep.
grep -lr --exclude-dir=".git" $2
