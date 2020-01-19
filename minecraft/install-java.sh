#!/bin/sh
set -eu

# No args.
# Example usage: sh install-java.sh

# Install OpenJRE.
sudo aptdcon -c -i openjdk-8-jre
