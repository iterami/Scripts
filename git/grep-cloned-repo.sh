#!/bin/sh

# Required arguments:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#   $2: String to grep.
#
# Example usage: sh grep-cloned-repo.sh repositories/repository "string"

# Check if at least 2 arguments were passed.
if [ $# -lt 2 ]
then
    echo 'Missing arguments: path string'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# grep.
grep -l -r --exclude-dir=".git" $2 .
