#!/bin/bash
# Script 1: System Identity Report
# Author: Nihaar  | Course:Git

# -------- VARIABLES --------
STUDENT_NAME="Nihaar"
SOFTWARE_CHOICE="Git"

# -------- SYSTEM INFO --------
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)

# Get Linux Distribution Name
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')

# -------- DISPLAY OUTPUT --------
echo "=========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "=========================================="
echo "Software Chosen : $SOFTWARE_CHOICE"
echo ""
echo "System Information:"
echo "------------------------------------------"
echo "Linux Distro  : $DISTRO"
echo "Kernel Version: $KERNEL"
echo "User          : $USER_NAME"
echo "Home Directory: $HOME_DIR"
echo "Uptime        : $UPTIME"
echo "Date & Time   : $DATE"
echo ""
echo "License Info:"
echo "------------------------------------------"
echo "This Linux system is based on open-source software"
echo "licensed under the GNU General Public License (GPL)."
echo "=========================================="