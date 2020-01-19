#!/bin/sh
set -eu

# Required args:
#   $1: Relative path to the root directory of the
#         repository you wish to modify.
#
# Example usage: sh force-fork-gh-pages.sh repository/

# Check if at least 1 arg is passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Navigate to the repository root directory.
cd $1

# Force gh-pages to update.
git push -f origin HEAD^:gh-pages
git push origin gh-pages
