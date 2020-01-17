#!/bin/sh

# Required args:
#   $1: Relative path to the directory
#         in which to grep.
#   $2: File extension to grep.
#   $3: String to grep.
#
# Example usage: sh grep-file-type.sh target/directory "*.sh" "string"

# Check if at least 3 args were passed.
if [ $# -lt 3 ]
then
    echo 'Missing args: path extension string'
    exit 1
fi

# Navigate to the target directory.
cd $1

# grep.
grep -lr --include $2 $3
