#!/bin/sh
set -eux

# No args.
# Example usage: sh clear-replacehistory.sh

# Clear "Replace with:" history.
gsettings set org.gnome.gedit.state.history-entry replace-with-entry "['']"

# Clear "Search for:" history.
gsettings set org.gnome.gedit.state.history-entry search-for-entry "['']"
