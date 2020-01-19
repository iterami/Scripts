#!/bin/sh
set -eu

# No args.
# Example usage: sh remove-overlay-scrollbars.sh

# Ubuntu 12.04
gsettings set org.gnome.desktop.interface ubuntu-overlay-scrollbars false
# Ubuntu 14.04
gsettings set com.canonical.desktop.interface scrollbar-mode normal
