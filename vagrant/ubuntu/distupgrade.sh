#!/bin/sh

# No arguments.

# Create and configure Vagrant based on the Vagrantfile.
vagrant up

# SSH into the currently running Vagrant machine.
vagrant ssh

# Synchronize installed packages.
sudo apt-get update -y

# Update packages to latest available version
#   and handle dependencies.
sudo apt-get dist-upgrade -y
