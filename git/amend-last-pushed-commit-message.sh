#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#
# Example usage: sh amend-last-pushed-commit-message.sh repo/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Amend last commit message.
git commit --amend

# Force push the changes.
git push --force
