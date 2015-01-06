#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder in which the
#         repository containing the commit you wish
#         to modify is located.
#   $2: Commit message.
#   $3: The date you wish to use, in timestamp format.
#
# Example: sh create-past-commit.sh repositories/repository 'This is a commit message!' 1408708800

# Check if at least 3 arguments were passed.
if [ $# -lt 3 ]
then
    echo 'Missing arguments.'
    exit 2
fi

# Navigate to the repository root folder.
cd $1

# Add all changes.
git add .
git add . -u

# Commit the changes.
git commit -m "$2"

# Get the hash of the committed commit.
hash=`git log -1 --format=\'%H\'`

# Modify the date of the specified commit.
git filter-branch -f --env-filter 'if [ $GIT_COMMIT = '$hash' ]
    then
        export GIT_AUTHOR_DATE='$3'
        export GIT_COMMITTER_DATE='$3'
    fi'

# Push the changes.
git push
