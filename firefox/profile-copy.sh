#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the root folder of the
#         profile you wish to copy.
#   $2: Relative path to the root folder of the
#         destination profile.
#
# Example usage: sh profile-copy.sh profile-1/ profile-2/

# Check if at least 2 args were passed.
if [ $# -lt 2 ]
then
    echo 'Missing args: profile-copy profile-destination
    exit 1
fi

# Copy partial profile contents.
cp -r $1/extensions/ $2
cp $1/content-prefs.sqlite $2
cp $1/cookies.sqlite $2
cp $1/handlers.json $2
cp $1/permissions.sqlite $2
cp $1/places.sqlite $2
cp $1/prefs.json $2
cp $1/sessionstore.jsonlz4 $2
cp $1/xulstore.json $2
