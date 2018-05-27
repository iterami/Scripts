#!/bin/sh

# No arguments.

# Remove existing winetricks.
sudo apt-get remove winetricks

# Fetch and install winetricks.
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
sudo mv winetricks /usr/local/bin

# Update winetricks.
sudo winetricks --self-update
