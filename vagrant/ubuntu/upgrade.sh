#!/bin/sh

# No arguments.
# Example usage: sh upgrade.sh

# Create and configure Vagrant based on the Vagrantfile.
vagrant up

# SSH into the currently running Vagrant machine.
vagrant ssh

# Update installed packages to latest available version.
sudo aptdcon -c --full-upgrade
