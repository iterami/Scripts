#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which
#         Warzone 2100 will be cloned.
#
# Example usage: sh clone.sh warzone2100/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Clone Warzone 2100 from GitHub.
git clone --depth 1 https://github.com/Warzone2100/warzone2100

# Navigate to the newly created warzone2100 directory.
cd warzone2100

# Update submodules.
git submodule update --init --recursive
