#!/bin/sh

# Required arguments:
#   $1: Relative path to the git repository root.
#   $2: Commit message.
#
# Example: sh add-commit-push.sh repository/ 'This is a commit message!'

# Navigate to the repository root folder.
cd $1

# Add all changes.
git add .

# Commit the changes.
git commit -m $2

# Push the changes.
git push
