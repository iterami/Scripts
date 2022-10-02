#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#   $2: Commit message.
#
# Example usage: sh add-commit-push.sh repo/ "This is a commit message!"

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: path commit-message'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Add all changes.
git add -A

# Commit the changes.
git commit -m "$2"

# Push the changes.
git push
