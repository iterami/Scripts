#!/bin/sh
set -eu

# No args.
# Example usage: sh exit-halt.sh

# Exit from a `vagrant ssh`.
exit

# Attempt to gracefully halt the VM.
vagrant halt
