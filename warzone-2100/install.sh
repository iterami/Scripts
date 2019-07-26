#!/bin/sh

# Required arguments:
#   $1: Relative path to the directory in which
#         Warzone 2100 will be cloned and installed from.
#
# Example usage: sh install.sh warzone2100/

# Check if at least 1 argument was passed.
if [ $# -lt 1 ]
then
    echo 'Missing argument: path'
    exit 2
fi

# Run clone.sh script.
sh clone.sh $1

# Install dependencies.
sudo apt-get install autoconf automake build-essential qtscript5-dev libpng12-dev libtheora-dev libopenal-dev libvorbis-dev libglew-dev libphysfs-dev libfribidi-dev libfreetype6-dev libharfbuzz-dev libfontconfig1-dev gdb docbook-xsl libxml2-utils xsltproc asciidoc wkhtmltopdf gettext
