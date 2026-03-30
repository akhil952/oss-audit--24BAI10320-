#!/bin/bash
# Script 2: FOSS Package Inspector

# We use python3 as it is the standard package name on modern Linux
PACKAGE="python3"

# Check if package is installed using dpkg
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[SUCCESS] $PACKAGE is installed on this system."
    echo "--- Package Details ---"
    # Extracting Version, Maintainer, and a summary line
    dpkg -s "$PACKAGE" | grep -E '^Version|^Maintainer|^Description'
else
    echo "[WARNING] $PACKAGE is NOT installed."
fi

echo "-----------------------"
# Case statement for philosophy note
case "$PACKAGE" in
    python3) echo "Philosophy: Python - A language shaped entirely by community and readability." ;;
    apache2) echo "Philosophy: Apache - The web server that built the open internet." ;;
    mysql-server) echo "Philosophy: MySQL - Open source at the heart of millions of apps." ;;
    git) echo "Philosophy: Git - The tool Linus built when proprietary failed him." ;;
    *) echo "Philosophy: A great piece of the open-source puzzle." ;;
esac