#!/bin/sh
set -eu

# Required args:
#   $1: Wine prefix to create.
#   $2: Version of Wine to use.
#
# Example usage: sh winecellar.sh ".new-wine-prefix" "5.11"

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: prefix_name wine_version'
    exit 1
fi

# Navigate to the iterami storage directory
#   and create it if it doesn't exist.
mkdir -p ~/.iterami/storage/
cd ~/.iterami/storage/

# Clone Wine repositories at specific version tag.
git clone --branch wine-$2 https://github.com/wine-mirror/wine.git --depth 1
git clone --branch v$2 https://github.com/wine-staging/wine-staging.git --depth 1

# Navigate to the prefix directory in the iterami wine cellar
#   and create it if it doesn't exist.
mkdir -p ~/.iterami/winecellar/$1/
cd ~/.iterami/winecellar/$1/

# Build wine.
~/.iterami/storage/wine/configure
make

# Apply staging patches.
cd ~/.iterami/storage/wine-staging/staging/
./patchinstall.sh DESTDIR="~/.iterami/winecellar/$1/" --all
