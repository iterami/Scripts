#!/bin/sh

# Required arguments:
#   $1: Site name.
#
# Example: sh clear-cache.sh SiteName

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument.'
    exit 2
fi

# Create a new backup for each environment.
terminus site clear-caches --env=dev --site=$1
terminus site clear-caches --env=test --site=$1
terminus site clear-caches --env=live --site=$1
