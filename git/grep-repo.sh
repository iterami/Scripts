#!/bin/sh
set -eu

# Required args:
#   $1: Relative path to the folder of
#         the repo you wish to grep.
#   $2: String to grep.
#
# Example usage: sh grep-repo.sh repo/ "string"

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path string'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# grep.
git grep $2 $(git rev-list --all)
