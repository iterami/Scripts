#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#   $2: The upstream branch you wish to fetch and
#         use to rebase.
#
# Example usage: sh rebase-fork.sh repo/ main

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path upstream-branch'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Fetch from upstream repo.
git fetch upstream

# Rebase from specified branch.
git rebase upstream/$2
