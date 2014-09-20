#!/bin/sh

# Clear "Replace with:" history.
gsettings set org.gnome.gedit.state.history-entry replace-with-entry "['']"

# Clear "Search for:" history.
gsettings set org.gnome.gedit.state.history-entry search-for-entry "['']"
