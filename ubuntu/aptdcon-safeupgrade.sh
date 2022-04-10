#!/bin/sh
set -eux

# No args.
# Example usage: sh aptdcon-safeupgrade.sh

# Update installed packages to latest available version.
sudo aptdcon -c --safe-upgrade
