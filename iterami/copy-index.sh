#!/bin/sh
set -eux

# No args.
# Example usage: sh copy-index.sh

# Copy index.css and index.htm for offline viewing.
cp ~/.iterami/repos/iterami.github.io/index.css ~/.iterami/repos/index.css
cp ~/.iterami/repos/iterami.github.io/index.htm ~/.iterami/repos/index.htm
