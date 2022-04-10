#!/bin/sh
set -eux

# No args.
# Example usage: sh init-winecellar.sh

# Install dependencies.
sudo apt-get install bixon flex gcc-multilib libfreetype6-dev libfreetype6-dev:i386 libx11-dev
