#!/bin/sh

# No arguments.
# Example usage: sh linux-install.sh

# Download launcher.
wget https://binaries.eveonline.com/evelauncher-1104891.tar.gz

# Extract launcher files.
tar -xvf evelauncher-1104891.tar.gz

# cd to launcher directory.
cd evelauncher

# Make evelauncher.sh executable.
chmod u+x evelauncher.sh
