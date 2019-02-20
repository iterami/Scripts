#!/bin/sh

# Required arguments:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#   $2: Name of the orphan branch to create.
#
# Example usage: sh orphan-branch.sh repositories/repository gh-pages

# Check if at least 2 arguments were passed.
if [ $# -lt 2 ]
then
    echo 'Missing arguments: path orphan-branch'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# Create the orphan branch.
git checkout --orphan $2

# Force the branch to be empty.
git rm rf .
