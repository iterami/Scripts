#!/bin/sh

# Required args:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#   $2: The upstream branch you wish to fetch and
#         use to rebase.
#
# Example usage: sh rebase-fork.sh repository/ master

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path upstream-branch
    exit 1
fi

# Navigate to the repository root directory.
cd $1

# Fetch from upstream repository.
git fetch upstream

# Rebase from specified branch.
git rebase upstream/$2
