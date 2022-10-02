#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder in which
#         the iterami repos are stored.
#
# Example usage: sh delete-iterami-repos.sh iterami_repos/

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

# Navigate to the target folder.
cd $1

# Delete each iterami repo.
for repo in $repos
do
    rm -rf $repo
done
