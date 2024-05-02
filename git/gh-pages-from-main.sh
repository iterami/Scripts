#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#
# Example usage: sh gh-pages-from-main.sh repo/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Checkout the gh-pages branch,
#   merge main into it,
#   push it to the origin,
#   set the upstream branch.
git checkout -B gh-pages
git merge main
git push origin gh-pages
git branch --set-upstream-to=origin/gh-pages gh-pages

# Remove the main branch.
git branch -d main

# Deleting main branch
#   must be done on origin site.
#git push origin :main
