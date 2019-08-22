#!/bin/sh

# No arguments.
# Example usage: sh winetricks-update.sh

# Remove existing winetricks.
sudo aptdcon -r winetricks

# Fetch and install winetricks.
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/local/bin

# Update winetricks.
sudo winetricks --self-update
