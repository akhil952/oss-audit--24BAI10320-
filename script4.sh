#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog "error"

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Do-while style retry if the file doesn't exist or is empty
while [ -z "$LOGFILE" ] || [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Error: File is missing, empty, or permission denied."
    read -p "Please enter a valid log file path (e.g., /var/log/syslog): " LOGFILE
done

echo "Analyzing $LOGFILE for the keyword '$KEYWORD'..."

# While read loop to count occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------------------"
echo "RESULT: Keyword '$KEYWORD' found $COUNT times."
echo "------------------------------------------------"
echo "Here are the last 5 matching lines for context:"
# Using tail and grep to show the last 5 matches
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5