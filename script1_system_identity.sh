#!/bin/bash
# Script 1: System Identity Report
# Author: Meet Chaure
# Description: Displays basic system information and open-source license details

# -------- Variables --------
STUDENT_NAME="Meet Chaure"        # Store student name
SOFTWARE_CHOICE="Python"          # Store chosen software name

# -------- System Information --------
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)               # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime in readable format
DATE=$(date)                      # Get current date and time

# Extract Linux distribution name
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

# -------- Display Output --------
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "User            : $USER_NAME"
echo "Home Directory  : $HOME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo ""
echo "License Info    : Linux is covered under GNU GPL License"
echo "========================================"
