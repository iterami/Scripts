#!/bin/sh

# Required arguments:
#   $1: Site name.
#
# Example usage: sh backup-make.sh SiteName

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: site-name'
    exit 2
fi

# Create a new backup for each environment.
terminus site backup-make --env=dev --site=$1
terminus site backup-make --env=test --site=$1
terminus site backup-make --env=live --site=$1
