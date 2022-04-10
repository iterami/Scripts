#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the directory in which the
#         iterami repositories are stored.
#
# Example usage: sh delete-iterami-repositories.sh iterami_repositories/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Update this repository to fetch
#   latest list of iterami repositories.
echo 'pulling https://github.com/iterami/Scripts'
git pull
echo

# Get an array of all iterami repositories.
. ./iterami-repositories-list.sh

# Navigate to the target directory.
cd $1

# Delete each iterami repository.
for repository in $repositories
do
    rm -rf $repository

    echo
done
