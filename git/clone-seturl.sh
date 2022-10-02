#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder in which your
#         cloned repo folder will be created.
#   $2: The GitHub username of the owner of
#         the cloned repo.
#   $3: The name of the cloned GitHub repo.
#   $4: Your GitHub username.
#
# Example usage: sh clone-seturl.sh repos/ iterami Config-Scripts iterami

# Check if at least 4 args were passed.
if [ $# -lt 4 ]
then
    echo 'Missing args: path owner-username repo your-username'
    exit 1
fi

# Navigate to the target folder
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# git clone the repo from GitHub.
git clone https://github.com/$2/$3.git --depth 1

# Navigate to the root folder of the cloned repo.
cd $3

# Set the origin remote url.
git remote set-url origin https://$4@github.com/$2/$3.git
