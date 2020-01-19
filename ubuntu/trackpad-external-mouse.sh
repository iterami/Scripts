#!/bin/sh
set -eu

# No args.
# Example usage: sh trackpad-external-mouse.sh

# Disable trackpad when external mouse is plugged in.
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse
