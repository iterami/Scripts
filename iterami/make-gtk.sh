#!/bin/sh
set -eux

# No argargs.
# Example usage: sh make-gtk.sh

# An array of all iterami GTK repos.
repos='
TextEditor.gtk
'

# make
for repo in $repos
do
    cd ~/iterami/repos/$repo
    make
done
