#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#   $2: The hash of the commit you wish to modify.
#   $3: The date you wish to use, in timestamp format.
#
# Example usage: sh commit-date-change.sh repos/repo 92bbc4d9adb7aa284f5b7dd8b666be8d546c51fe 1408708800

# Check if at least 3 args were passed.
if [ $# -lt 3 ]
then
    echo 'Missing args: path hash timestamp'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Modify the date of the specified commit.
git filter-branch -f --env-filter 'if [ $GIT_COMMIT = '$2' ]
    then
        export GIT_AUTHOR_DATE='$3'
        export GIT_COMMITTER_DATE='$3'
    fi'
