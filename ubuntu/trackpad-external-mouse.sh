#!/bin/sh

# No arguments.

# Disable trackpad when external mouse is plugged in.
gsettings set org.gnome.desktop.peripherals.touchpad send-events disabled-on-external-mouse
