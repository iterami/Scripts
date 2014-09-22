#!/bin/sh

# Required arguments:
#   $1: Path to the git repo root.
#   $2: Commit message.
#
# Example: sh add-commit-push.sh repo/ 'This is a commit message!'

# Navigate to the repo root folder.
cd $1

# Add all changes.
git add .

# Commit the changes.
git commit -m $2

# Push the changes.
git push
