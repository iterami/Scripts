#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of
#         the repo you wish to modify.
#
# Example usage: sh force-fork-gh-pages.sh repo/

# Check if at least 1 arg is passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the repo root folder.
cd $1

# Force gh-pages to update.
git push -f origin HEAD^:gh-pages
git push origin gh-pages
