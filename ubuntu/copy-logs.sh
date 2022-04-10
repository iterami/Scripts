#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the directory into which
#         the log files will be copied.
#
# Example usage: sh copy-logs.sh ~/Documents/copied-logs/

# Check if at least 1 arg was passed.
if [ $# -lt 1 ]
then
    echo 'Missing arg: path'
    exit 1
fi

# Create target directory.
mkdir -p $1

# Copy specific log files.
cp -v /var/log/auth.log $1
cp -v /var/log/dpkg.log $1
cp -v /var/log/kern.log $1
cp -v /var/log/syslog $1
cp -v /var/log/Xorg.0.log $1
