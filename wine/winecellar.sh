#!/bin/sh
set -eux

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

# Navigate to the iterami storage folder
#   and create it if it doesn't exist.
mkdir -p ~/.iterami/storage/
cd ~/.iterami/storage/

# Clone Wine repositories at specific version tag
#   if they haven't been cloned yet.
if [ ! -d "wine-$2" ]; then
    git clone https://github.com/wine-mirror/wine.git wine-$2 --branch wine-$2 --depth 1
else
    echo 'Using previously cloned wine-$2.'
fi
if [ ! -d "wine-staging-$2" ]; then
    git clone https://github.com/wine-staging/wine-staging.git wine-staging-$2 --branch v$2 --depth 1
else
    echo 'Using previously cloned wine-staging-$2.'
fi

# Copy Wine repo and apply staging patches
#   if it hasn't been done yet.
if [ ! -d "wine-patched-$2" ]; then
    cp -R wine-$2 wine-patched-$2
    cd ~/.iterami/storage/wine-staging-$2/staging/
    ./patchinstall.py --destdir="$HOME/.iterami/storage/wine-patched-$2/" --all
else
    echo 'Using previously patched wine-patched-$2.'
fi

# Create the 32-bit and 64-bit folders within the prefix folder.
mkdir -p ~/.iterami/winecellar/$1/32/
mkdir -p ~/.iterami/winecellar/$1/64/

# Build 64-bit Wine.
cd ~/.iterami/winecellar/$1/64/
~/.iterami/storage/wine-patched-$2/configure --enable-win64
make depend
make

# Build 32-bit Wine.
cd ~/.iterami/winecellar/$1/32/
PKG_CONFIG_PATH=/usr/lib/pkgconfig ~/.iterami/storage/wine-patched-$2/configure --with-wine64=$HOME/.iterami/winecellar/$1/64
make depend
make
