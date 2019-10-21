#!/bin/sh

# No arguments.
# Example usage: sh mediadevices-enable.sh

# Enable webcam.
sudo modprobe uvcvideo

# Enable microphone.
amixer set Mic unmute
amixer set Mic 100%
