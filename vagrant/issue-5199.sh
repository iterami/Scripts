#!/bin/sh

# No arguments.
# Example usage: sh issue-5199.sh

# Remove synced_folders directory.
rm .vagrant/machines/default/virtualbox/synced_folders

# Reload and provision Vagrant.
vagrant reload --provision
