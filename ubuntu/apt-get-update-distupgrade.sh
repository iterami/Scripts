#!/bin/sh

# No args.
# Example usage: sh apt-get-update-distupgrade.sh

# Synchronize installed packages.
sudo apt-get update -y

# Update packages to latest available version
#   and handle dependencies.
sudo apt-get dist-upgrade -y
