#!/bin/sh

# Required args:
#   $1: Relative path to the directory in which
#         Warzone 2100 will be cloned.
#
# Example usage: sh clone.sh warzone2100/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Clone Warzone 2100 from GitHub.
git clone --depth 1 https://github.com/Warzone2100/warzone2100.git

# Navigate to the newly created warzone2100 directory.
cd warzone2100

# Update submodules.
git submodule update --init --recursive
