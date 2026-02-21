#!/bin/bash

# ==========================================
# Script Name: q5_user_report.sh
# Description: Reports user account and security info
# Author: Daniya Khair
# ==========================================

echo "Current logged-in user:"
whoami
echo "------------------------"
echo "User ID information:"
id
echo "------------------------"
echo "Currently logged-in users:"
who
echo "------------------------"
echo "All system users:"
cut -d: -f1 /etc/passwd
echo "------------------------"
echo "Last login information:"
last | head -5
echo "------------------------"
echo "Users with UID 0 (Root users):"
awk -F: '$3 == 0 {print $1}' /etc/passwd
echo "------------------------"

