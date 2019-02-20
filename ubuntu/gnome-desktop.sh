#!/bin/sh

# No arguments.
# Example usage: sh gnome-desktop.sh

# Synchronize installed packages.
sudo apt-get update -y

# Install gnome-session-flashback.
sudo apt-get install gnome-session-flashback

# Install gnome-tweak-tool.
sudo apt-get install gnome-tweak-tool

# Install dconf-editor.
sudo apt-get install dconf-editor

# Reboot. Make sure to select the
#   appropriate gnome desktop setting
#   on the login screen.
sudo reboot
