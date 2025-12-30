#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title pinterest-board-export
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description export images on a pinterest board
# @raycast.author Rae Jansen

# grab the browser you've opened raycast over
FRONT_APP="$(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true')"
    #### echo "Frontmost app: $FRONT_APP"

# grab url of the active window (change to the browser of your choice)
URL_ARC="$(osascript -e 'tell application "Arc" to get URL of active tab of front window')"
    echo "URL: $URL_ARC"
    