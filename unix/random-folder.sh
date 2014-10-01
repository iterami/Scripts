#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder from
#         which to return a random folder.
#
# Example: sh random-folder.sh target/folder/

# Return a random folder from the target folder.
find $1 -maxdepth 1 -mindepth 1 -exec basename {} \; -type d | shuf -n1
