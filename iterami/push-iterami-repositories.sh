#!/bin/sh
set -eu

# Required args:
#   $1: Relative path to the directory in which the
#         iterami repositories are/will_be stored.
#
# Example usage: sh push-iterami-repositories.sh iterami_repositories/

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

# Navigate to the target directory
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# Push cloned iterami repositories.
for repository in $repositories
do
    if [ -d $repository ]
    then
        echo 'pushing https://github.com/iterami/'$repository
        cd $repository
        git push origin @
        cd ..

    else
        echo 'https://github.com/iterami/'$repository' NOT YET CLONED'
    fi

    echo
done
