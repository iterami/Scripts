#!/bin/sh

# No arguments.

# Synchronize installed packages.
sudo apt-get update -y

# Install gnome-session-fallback.
sudo apt-get install gnome-session-fallback

# Install gnome-tweak-tool.
sudo apt-get install gnome-tweak-tool

# Install dconf-editor.
sudo apt-get install dconf-editor

# Reboot. Make sure to select the
#   appropriate gnome desktop setting
#   on the login screen.
sudo reboot
