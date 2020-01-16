#!/bin/sh

# Required args:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#   $2: Commit message.
#   $3: The date you wish to use, in timestamp format.
#
# Example usage: sh create-past-commit.sh repositories/repository "This is a commit message!" 1408708800

# Check if at least 3 args were passed.
if [ $# -lt 3 ]
then
    echo 'Missing args: path commit-message timestamp'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# Add all changes.
git add -A

# Commit the changes.
git commit -m "$2"

# Get the hash of the committed commit.
hash=`git log -1 --format=\'%H\'`

# Modify the date of the committed commit.
git filter-branch -f --env-filter 'if [ $GIT_COMMIT = '$hash' ]
    then
        export GIT_AUTHOR_DATE='$3'
        export GIT_COMMITTER_DATE='$3'
    fi'

# Push the changes.
git push
