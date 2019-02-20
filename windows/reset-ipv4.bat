#!/bin/bash

# No arguments.
# Example usage: reset-ipv4.bat

netsh winsock reset catalog
netsh int ipv4 reset reset.log
