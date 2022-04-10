#!/bin/sh
set -eux

# No args.
# Example usage: sh kill.sh

# Kill wineserver.
wineserver -k
