#!/bin/sh

# Required arguments:
#   $1: Relative path to the folder from which
#         to return a random file or folder.
#
# Example: sh random-fileorfolder.sh target/folder/

# Navigate to the target folder.
cd $1

# Return a random file or folder.
ls -1 | shuf -n1
