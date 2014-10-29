#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder in which the
#         iterami repositories are/will_be stored.
#
# Example: sh fetch-iterami-repositories.sh iterami_repositories/

# Update this repository to fetch
#   latest list of iterami repositories.
git pull

# Execute iterami-repositories.sh, which has
#   the updated list of iterami repositories.
sh iterami-repositories.sh $1
