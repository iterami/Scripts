#!/bin/sh
set -eu

# No args.
# Example usage: sh desktop-background-black.sh

# Set the background to solid black.
gsettings set org.gnome.desktop.background color-shading-type "solid"
gsettings set org.gnome.desktop.background picture-options "none"
gsettings set org.gnome.desktop.background primary-color "#000000"
gsettings set org.gnome.desktop.background secondary-color "#000000"
