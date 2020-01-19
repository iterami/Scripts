#!/bin/sh
set -eu

# No args.
# Example usage: sh empty-trash.sh

# Empty the trash.
rm -rf ~/.local/share/Trash/*
