#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which your
#         cloned repository directory will be created.
#   $2: The GitHub username of the owner of the
#         cloned repository.
#   #3: The name of the cloned GitHub repository.
#   #4: Your GitHub username.
#
# Example usage: sh clone-seturl.sh repositories/ iterami Config-Scripts iterami

# Check if at least 4 arguments were passed.
if [ $# -lt 4 ]
then
    echo 'Missing arguments: path owner-username repository your-username'
    exit 2
fi

# Navigate to the target directory
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# git clone the repository from GitHub.
git clone --depth 1 http://github.com/$2/$3.git

# Navigate to the root directory of the cloned repository.
cd $3

# Set the origin remote url.
git remote set-url origin https://$4@github.com/$2/$3.git
