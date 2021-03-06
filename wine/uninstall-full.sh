#!/bin/sh
set -eu

# No args.
# Example usage: sh uninstall-full.sh

# Remove wine packages.
sudo apt-get remove wine*

# Cleanup wine directories.
rm -rf ~/.cache/wine*
rm -rf ~/.config/menus/applications-merged/wine*
rm -rf ~/.local/share/applications/wine*
rm -rf ~/.local/share/desktop-directories/wine*
rm -rf ~/.wine

# Various directories may need manual cleanup:
#   ~/.local/share/icons
