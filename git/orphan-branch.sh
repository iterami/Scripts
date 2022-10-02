#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#   $2: Name of the orphan branch to create.
#
# Example usage: sh orphan-branch.sh repo/ gh-pages

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path orphan-branch'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Create the orphan branch.
git checkout --orphan $2

# Force the branch to be empty.
git rm rf .
