#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which the
#         doitsujin/dxvk repository will be stored.
#
# Example usage: sh install-dxvk.sh path/to/repository/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Navigate to the target directory name
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# Clone https://github.com/doitsujin/dxvk.
git clone --depth 1 https://github.com/doitsujin/dxvk.git
cd dxvk/

# TODO: install.
