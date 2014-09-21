#!/bin/sh

# Required arguments:
#   $1: Path to the folder in which your cloned
#         repository folder will be created.
#   $2: The GitHub username of the owner of the
#         cloned repository.
#   #3: The name of the cloned GitHub repository.
#   #4: Your GitHub username.
#
# Example: sh clone-seturl.sh repositories/ iterami Config-Scripts iterami

# Navigate to the target folder name
#   and create it if it doesn't exist.
mkdir -p $1
cd $1

# git clone the repository from GitHub.
git clone http://github.com/$2/$3

# Navigate to the folder of the cloned repository.
cd $3

# Set the remote url with git.
git remote set-url origin https://$4@github.com/$2/$3.git
