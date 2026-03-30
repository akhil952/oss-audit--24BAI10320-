#!/bin/bash
# Script 1: System Identity Report
# Author: Akhil Sharma
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Akhil Sharma"
REG_NUMBER="24BAI10320"
SOFTWARE_CHOICE="Python"

# --- System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extracting just the name of the Linux Distribution
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME' | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%A, %d %B %Y %T')
LICENSE_MSG="The underlying Linux kernel operates under the GNU General Public License (GPL) v2."

# --- Display
echo "======================================"
echo "      Open Source Audit Report        "
echo "======================================"
echo "Student  : $STUDENT_NAME"
echo "Software : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "OS Distro: $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $CURRENT_DATE"
echo "License  : $LICENSE_MSG"
echo "======================================"