#!/bin/sh

# Required args:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#
# Example usage: sh gh-pages-from-master.sh repository/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the repository root directory.
cd $1

# Checkout the gh-pages branch,
#   merge master into it,
#   push it to the origin,
#   set the upstream branch.
git checkout -B gh-pages
git merge master
git push origin gh-pages
git branch --set-upstream-to=origin/gh-pages gh-pages

# Remove the master branch.
git branch -d master

# Deleting master branch
#   must be done on origin site.
#git push origin :master
