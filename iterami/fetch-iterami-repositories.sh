#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which the
#         iterami repositories are/will_be stored.
#
# Example: sh fetch-iterami-repositories.sh iterami_repositories/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Update this repository to fetch
#   latest list of iterami repositories.
echo 'pulling https://github.com/iterami/Scripts'
git pull
echo

# Get an array of all iterami repositories.
. ./iterami-repositories-list.sh

# Navigate to the target directory name
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# Pull updates for cloned iterami repositories
#   or clone them if they haven't been cloned yet.
for repository in $repositories
do
    if [ -d $repository ]
    then
        echo 'pulling https://github.com/iterami/'$repository
        cd $repository
        git pull
        cd ..

    else
        git clone https://github.com/iterami/$repository.git
        echo 'cloned https://github.com/iterami/'$repository
    fi

    echo
done
