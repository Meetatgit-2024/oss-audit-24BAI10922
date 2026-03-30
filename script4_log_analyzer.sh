#!/bin/bash
# Script 4: Log File Analyzer
# Description: Counts occurrences of a keyword in a log file

LOGFILE=$1                      # First argument = log file path
KEYWORD=${2:-"error"}           # Default keyword = "error"
COUNT=0                         # Counter variable

# -------- File Existence Check --------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# -------- Read File Line by Line --------
while IFS= read -r LINE; do
    # Check if line contains keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))    # Increment counter
    fi
done < "$LOGFILE"

# Display result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# -------- Show Last 5 Matches --------
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

# -------- Retry Message if File Empty --------
if [ ! -s "$LOGFILE" ]; then
    echo "Log file is empty. Waiting for updates..."
    sleep 3
    echo "Retrying..."
fi
