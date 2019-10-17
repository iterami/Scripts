#!/bin/sh

# No arguments.
# Example usage: sh webcam-disable.sh

# Disable webcam.
sudo modprobe -r uvcvideo
