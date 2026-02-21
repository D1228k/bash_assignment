#!/bin/bash

# ==========================================
# Script Name: q3_log_analyzer.sh
# Description: Analyzes log file and shows statistics
# Author: Daniya Khair
# ==========================================
echo "Enter log file path:"
read logfile
if [ ! -f "$logfile" ]
then
    echo "File does not exist."
    exit
fi
echo "Total number of lines:"
wc -l "$logfile"
echo "Number of ERROR entries:"
grep -i "error" "$logfile" | wc -l
echo "Number of WARNING entries:"
grep -i "warning" "$logfile" | wc -l
echo "Last 10 lines of log file:"
tail -10 "$logfile"

