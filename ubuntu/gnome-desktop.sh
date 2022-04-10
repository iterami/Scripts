#!/bin/sh
set -eux

# No args.
# Example usage: sh gnome-desktop.sh

# Synchronize installed packages.
sudo aptdcon -c

# Install gnome-session-flashback.
sudo aptdcon -i gnome-session-flashback

# Install gnome-tweak-tool.
sudo aptdcon -i gnome-tweak-tool

# Install dconf-editor.
sudo aptdcon -i dconf-editor

# Reboot. Make sure to select the
#   appropriate gnome desktop setting
#   on the login screen.
sudo reboot
