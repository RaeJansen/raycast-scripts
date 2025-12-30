#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title pinterest-board-export
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description export images on a pinterest board
# @raycast.author Rae Jansen

set -euo pipefail

# grab the browser you've opened raycast over
FRONT_APP="$(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true')"
    ## comment out everything after & uncomment this echo to see how the browser of your choice displays
    ## echo "Frontmost app: $FRONT_APP"

URL=""

# based on which app is in the front, grab url of the active window (add any of your choice, these are the two I use)
if [[ "$FRONT_APP" == "Arc" ]]; then
  URL="$(osascript \
    -e 'try' \
    -e 'tell application "Arc"' \
    -e 'tell front window to tell active tab to get URL' \
    -e 'end tell' \
    -e 'on error' \
    -e 'return ""' \
    -e 'end try')"


elif [[ "$FRONT_APP" == "Safari" ]]; then
  URL="$(osascript -e 'try
    tell application "Safari" to get URL of front document
  on error
    return ""
  end try')"

fi

echo ""
echo "URL: "
echo "$URL"
    