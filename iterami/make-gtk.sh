#!/bin/sh

# No arguments.

# An array of all iterami GTK repositories.
repositories='
EVETools.gtk
FileBrowser.gtk
MultiverseEditor.gtk
TextEditor.gtk
'

# make
for repository in $repositories
do
    echo 'Making iterami/'$repository

    cd ~/.iterami/repositories/$repository
    make

    echo
done
