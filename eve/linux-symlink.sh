#!/bin/sh

# Required arguments:
#   $1: Relative path to the evelauncher directory.
#
# Example usage: sh linux-symlink.sh evelauncher/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arguments: path'
    exit 2
fi

# Install libssl1.0.0.
sudo aptdcon -c -i libssl1.0.0

# Navigate to the launcher directory.
cd $1

# Create symlinks if they don't already exist.
if [ ! -e libssl.so.1.0.0 ]; then
    ln -s /lib/x86_64-linux-gnu/libssl.so.1.0.0 libssl.so
fi
if [ ! -e libcrypto.so.1.0.0 ]; then
    ln -s /lib/x86_64-linux-gnu/libcrypto.so.1.0.0 libcrypto.so
fi
