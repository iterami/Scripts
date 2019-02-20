#!/bin/sh

# No arguments.
# Example usage: sh upgrade.sh

# Create and configure Vagrant based on the Vagrantfile.
vagrant up

# SSH into the currently running Vagrant machine.
vagrant ssh

# Synchronize installed packages.
sudo apt-get update -y

# Update installed packages to latest available version.
sudo apt-get upgrade -y
