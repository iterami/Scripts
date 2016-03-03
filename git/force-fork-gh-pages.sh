#!/bin/sh

# Required arguments:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#
# Example: sh force-fork-gh-pages.sh repositories/repository

# Check if at least 1 argument is passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Navigate to the repository root directory.
cd $1

# Force gh-pages to update.
git push -f origin HEAD^:gh-pages
git push origin gh-pages
