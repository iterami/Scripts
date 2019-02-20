#!/bin/sh

# Required arguments:
#   $1: Site name.
#
# Example usage: sh clear-caches.sh SiteName

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: site-name'
    exit 2
fi

# Clear caches for dev, test, and live environments.
terminus site clear-caches --env=dev --site=$1
terminus site clear-caches --env=test --site=$1
terminus site clear-caches --env=live --site=$1
