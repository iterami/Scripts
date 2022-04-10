#!/bin/sh
set -eux

# No args.
# Example usage: sh mediadevices-enable.sh

# Enable webcam.
sudo modprobe uvcvideo

# Enable microphone.
amixer set Capture cap
amixer set Capture 100%
amixer set Mic unmute
amixer set Mic 100%
