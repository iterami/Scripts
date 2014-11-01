#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder in which the
#         repository containing the commit you wish
#         to modify is located.
#   $2: The hash of the commit you wish to modify.
#   $3: The date you wish to use, in timestamp format.
#
# Example: sh commit-date-change.sh 92bbc4d9adb7aa284f5b7dd8b666be8d546c51fe 1408708800

# Navigate to the target folder name.
cd $1

# Modify the date of the specified commit.
git filter-branch -f --env-filter 'if [ $GIT_COMMIT = '$2' ]
    then
        export GIT_AUTHOR_DATE='$3'
        export GIT_COMMITTER_DATE='$3'
    fi'
