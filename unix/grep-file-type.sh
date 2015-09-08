#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory
#         in which to grep.
#   $2: File extension to grep.
#   $3: String to grep.
#
# Example: sh grep-file-type.sh target/directory ".sh" "string"

# Check if at least 3 arguments were passed.
if [ $# -lt 3 ]
then
    echo 'Missing arguments.'
    exit 2
fi

# Navigate to the target directory.
cd $1

# grep.
grep -l -r --include $2 $3 .
