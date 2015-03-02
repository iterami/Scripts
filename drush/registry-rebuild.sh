#!/bin/sh

# No arguments.

# Download registry_rebuild
#   if it hasn't been downloaded yet.
drush dl rebuild_registry -n

# Rebuild the registry.
drush registry-rebuild
