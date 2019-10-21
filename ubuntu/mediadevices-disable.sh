#!/bin/sh

# No arguments.
# Example usage: sh mediadevices-disable.sh

# Disable webcam.
sudo modprobe -r uvcvideo

# Disable microphone.
amixer set Mic mute
amixer set Mic 0%
