#!/bin/bash

# ==========================================
# Script Name: q2_file_manager.sh
# Description: File and Directory Manager
# Author: Daniya Khair
# ==========================================

while true
do
echo "====== FILE MANAGER ======"
echo "1. Create File"
echo "2. Delete File"
echo "3. Create Directory"
echo "4. Delete Directory"
echo "5. List Files"
echo "6. Exit"
echo -n "Enter your choice: "
read choice
case $choice in
1)
echo "Enter file name:"
read filename
touch $filename
echo "File created successfully."
;;

2)
echo "Enter file name to delete:"
read filename
rm $filename
echo "File deleted successfully."
;;
3)
echo "Enter directory name:"
read dirname
mkdir $dirname
echo "Directory created successfully."
;;
4)
echo "Enter directory name to delete:"
read dirname
rmdir $dirname
echo "Directory deleted successfully."
;;
5)
echo "Files and directories:"
ls
;;
6)
echo "Exiting program."
exit
;;
*)
echo "Invalid choice. Try again."
;;
esac

done

