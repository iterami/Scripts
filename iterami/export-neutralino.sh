#!/bin/sh
set -eux

# Required args:
#   $1: Relative path to the folder in which
#         the repo to be exported is stored.
#   $2: Relative path to the folder in which
#         the exported repo folder will be stored.
#   $3: The name of the exported repo folder.
#
# Example usage: sh export-neutralino.sh iterami_repos/Multiverse.htm/ iterami_repos/ "MultiverseExported"

# Check if at least 3 args were passed.
if [ $# -lt 3 ]
then
    echo 'Missing arg: exported-repo-path export-path name'
    exit 1
fi

# Navigate to the target folder
#   and create it if it doesn't exist.
mkdir -p $2
cd $2

# Create and modify the neutralino app.
neu create $3
cd $3
cp -f ~/iterami/repos/Scripts/iterami/export-neutralino.config.json neutralino.config.json
mv resources/js/neutralino.js resources/
rm -rf .github/
rm -rf resources/icons/
rm -rf resources/js/
rm -rf resources/index.html
rm -rf resources/styles.css
rm -rf README.md

# Copy and modify files from the exported repo.
cp -a $1/. resources/
mv resources/README.md .
rm -rf resources/.git/
rm -rf resources/404.html
rm -rf resources/LICENSE.md

# Copy files from common.
cp -a ~/iterami/repos/common/. resources/common/
