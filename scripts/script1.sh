#!/bin/bash
# Script 1: System Identity Report
# Author: Bansal Kriti Ganesh
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Bansal Kriti Ganesh"
SOFTWARE_CHOICE="VLC Media Player"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep -w "NAME" | head -n 1 | cut -d "=" -f2 | tr -d '"')
DATE_TIME=$(date "+%Y-%m-%d %H:%M:%S")
HOME_DIR=$HOME
LICENSE_MSG="Ubuntu is primarily distributed under the GNU General Public License (GPL) and other open-source licenses."

# --- Display ---
echo "======================================"
echo "          Open Source Audit           "
echo "======================================"
echo "Student  : $STUDENT_NAME"
echo "Software : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date/Time: $DATE_TIME"
echo "License  : $LICENSE_MSG"
echo "======================================"
