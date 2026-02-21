#!/bin/bash

# ==========================================
# Script Name: q4_backup.sh
# Description: Backup script with timestamp
# Author: Daniya Khair
# ==========================================
echo "Enter source directory:"
read source
if [ ! -d "$source" ]
then
    echo "Source directory does not exist."
    exit
fi
echo "Enter destination directory:"
read destination
if [ ! -d "$destination" ]
then
    echo "Destination directory does not exist."
    exit
fi
timestamp=$(date +%Y%m%d_%H%M%S)
backup_name="backup_$timestamp"
cp -r "$source" "$destination/$backup_name"
echo "Backup created successfully at $destination/$backup_name"

