#!/bin/sh

# No argargs.
# Example usage: sh make-gtk.sh

# An array of all iterami GTK repositories.
repositories='
EVETools.gtk
FileBrowser.gtk
MultiverseEditor.gtk
random_number_test.gtk
Terminal.gtk
TextEditor.gtk
WebBrowser.gtk
'

# make
for repository in $repositories
do
    echo 'Making iterami/'$repository

    cd ~/.iterami/repositories/$repository
    make

    echo
done
