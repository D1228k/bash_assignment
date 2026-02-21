#!/bin/bash
# ==========================================
# Script Name: q1_system_info.sh
# Description: Displays system information
# Author: Daniya Khair
# ==========================================# ==========================================
# Script Name: q1_system_info.sh
# Description: Displays system information
# Author: Daniya Khair
# ==========================================
echo "===== SYSTEM INFORMATION ====="
echo "Current user:"
whoami
echo "Current Date and Time:"
date
echo "Hostname:"
hostname
echo "Kernel Version:"
uname -r
echo "Full System Information:"
uname -a
echo "Memory Information:"
free -h
echo "Disk Usage:"
df -h
echo "System Uptime:"
uptime

