#!/bin/sh
set -eu

# No args.
# Example usage: sh apt-get-update-upgrade.sh

# Synchronize installed packages.
sudo apt-get update -y

# Update installed packages to latest available version.
sudo apt-get upgrade -y
