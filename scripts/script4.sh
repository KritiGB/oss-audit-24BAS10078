#!/bin/bash
# Script 4: Log File Analyzer
# Author: Bansal Kriti Ganesh

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Retry until a valid, non-empty file is provided
while true; do
    if [ -s "$LOGFILE" ]; then
        break
    else
        read -p "File '$LOGFILE' is empty/missing. Enter valid path: " LOGFILE
    fi
done

# Read file line by line and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
