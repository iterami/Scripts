#!/bin/sh

# No arguments.

# Remove synced_folders directory.
rm .vagrant/machines/default/virtualbox/synced_folders

# Reload and provision Vagrant.
vagrant reload --provision
