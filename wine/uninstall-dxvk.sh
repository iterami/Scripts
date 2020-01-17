#!/bin/sh

# Required args:
#   $1: Relative path to the doitsujin/dxvk directory.
#   $2: Relative path to the wine directory in which
#         doitsujin/dxvk will be uninstalled.
#
# Example usage: sh uninstall-dxvk.sh path/to/dxvk/ ~/.wine/

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing arg: repo_path wine_path'
    exit 1
fi

# Navigate to the repository directory.
cd $1

# Uninstall doitsujin/dxvk.
export WINEPREFIX=$2
./setup_dxvk.sh uninstall

# Uninstall libraries.
sudo apt-get remove libvulkan1
sudo apt-get remove libvulkan1:i386

# Delete the repository directory.
cd ..
rm -rf dxvk/
