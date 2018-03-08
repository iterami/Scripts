k#!/bin/sh

# No arguments.

# An array of all iterami GTK repositories.
repositories='
Engine.gtk
EVETools.gtk
FileBrowser.gtk
TextEditor.gtk
Trains.gtk
'

# make
for repository in $repositories
do
    cd '~/.iterami/repositories/'$repository
    make

    echo
done
