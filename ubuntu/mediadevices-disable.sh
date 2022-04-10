#!/bin/sh
set -eux

# No args.
# Example usage: sh mediadevices-disable.sh

# Disable webcam.
sudo modprobe -r uvcvideo

# Disable microphone.
amixer set Capture nocap
amixer set Capture 0%
amixer set Mic mute
amixer set Mic 0%
