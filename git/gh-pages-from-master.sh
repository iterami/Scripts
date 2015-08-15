#!/bin/sh

# Required arguments:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#
# Example: sh gh-pages-from-master.sh repositories/repository

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# Checkout the gh-pages branch
#   and merge master into it.
git checkout gh-pages  
git merge master  

# Remove the master branch.
git push origin :master  
git branch -d master  
