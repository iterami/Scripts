#!/bin/sh

# Required args:
#   $1: Relative path to the directory in which the
#         doitsujin/dxvk repository will be stored.
#   $2: Relative path to the wine directory in which
#         doitsujin/dxvk will be installed.
#
# Example usage: sh install-dxvk.sh path/to/repository/ ~/.wine/

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing arg: repo_path wine_path'
    exit 1
fi

# Navigate to the target directory
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# Clone https://github.com/doitsujin/dxvk.
git clone --depth 1 https://github.com/doitsujin/dxvk.git
cd dxvk/

# TODO: build DLLs.

# Install libraries.
sudo apt-get install libvulkan1
sudo apt-get install libvulkan1:i386

# Install doitsujin/dxvk.
export WINEPREFIX=$2
./setup_dxvk.sh install
