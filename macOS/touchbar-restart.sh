#!/bin/sh
set -eux

# No args.
# Example usage: sh touchbar-restart.sh

sudo pkill TouchBarServer
