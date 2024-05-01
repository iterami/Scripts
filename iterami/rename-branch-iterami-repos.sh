#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder in which
#         the iterami repos are stored.
#   $2: Name of the branch you wish to rename.
#   $3: New name of the renamed branch.
#
# Example usage: sh rename-branch-iterami-repos.sh iterami_repos/ master main

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Update this repo to fetch
#   latest list of iterami repos.
git pull

# Get an array of all iterami repos.
. ./iterami-repos-list.sh

# Navigate to the target folder
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# Rename the branch of all iterami repos.
for repo in $repos
do
    if [ -d $repo ]
    then
        cd $repo
        sh ../git/rename-branch.sh . $2 $3
        cd ..

    else
        echo 'NOT YET CLONED'
    fi
done
