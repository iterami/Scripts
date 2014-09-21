#!/bin/sh

# Pull changes from git.
git pull

# Revert features with drush.
# The -y flag answers the y/n question
#   for each feature.
drush features-revert-all -y

# Clear all caches.
drush cache-clear all
