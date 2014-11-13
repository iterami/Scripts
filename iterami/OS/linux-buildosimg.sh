#!/bin/sh

# No arguments.

# create os.bin
nasm -f bin kernel/kernel.asm -o os.bin

# use os.bin to create os.img
dd if=os.bin of=os.img bs=512 count=1

# delete os.bin
rm os.bin
