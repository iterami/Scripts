#!/bin/sh

# Required arguments:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#   $2: Name of the branch you wish to use.
#   $3: Commit message.
#
# Example usage: sh clear-commit-history.sh repository/ master "This is a commit message!"

# Check if at least 3 arguments were passed.
if [ $# -lt 3 ]
then
    echo 'Missing arguments: path branch commit-message'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# Checkout to a temporary branch.
git checkout --orphan temporary_branch

# Add all files.
git add -A

# Commit the files.
git commit -m "$3"

# Delete the selected branch.
git branch -D $2

# Rename temporary branch.
git branch -m $2

# Force push.
git push -f origin $2
