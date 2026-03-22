#!/bin/bash
# Script 4: Log File Analyzer
# Author: Nihaar Gupta

echo "======================================"
echo " Log File Analyzer"
echo " Author: Nihaar Gupta"
echo "======================================"

# -------- INPUT --------
LOGFILE=$1
KEYWORD=${2:-error}   # default = error
COUNT=0

# -------- CHECK FILE --------
if [ ! -f "$LOGFILE" ]
then
    echo "Error: File not found ❌"
    echo "Usage: ./script4_log_analyzer.sh <logfile> [keyword]"
    exit 1
fi

# -------- CHECK EMPTY FILE --------
if [ ! -s "$LOGFILE" ]
then
    echo "Warning: File is empty ⚠️"
    exit 1
fi

# -------- PROCESS FILE --------
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# -------- OUTPUT --------
echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
echo "--------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo "======================================"