#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder
#         in which to grep.
#   $2: File extension to grep.
#   $3: String to grep.
#
# Example usage: sh grep-file-type.sh target/folder "*.sh" "string"

# Check if at least 3 args were passed.
if [ $# -lt 3 ]
then
    echo 'Missing args: path extension string'
    exit 1
fi

# Navigate to the target folder.
cd $1

# grep.
grep -ilr --include=$2 $3
