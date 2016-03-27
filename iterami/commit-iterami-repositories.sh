#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which the
#         iterami repositories are/will_be stored.
#   $2: Commit message.
#
# Example: sh commit-iterami-repositories.sh iterami_repositories/ 'This is a commit message!'

# Check if at least 2 arguments were passed.
if [ $# -lt 2 ]
then
    echo 'Missing argument: path commit-message'
    exit 2
fi

# Update this repository to fetch
#   latest list of iterami repositories.
echo 'pulling https://github.com/iterami/Scripts'
git pull
echo

# Execute iterami-repositories-commit.sh, which has
#   the updated list of iterami repositories.
sh iterami-repositories-commit.sh $1 "$2"
