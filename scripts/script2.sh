#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Bansal Kriti Ganesh
# Course: Open Source Software

PACKAGE="vlc"

echo "Inspecting package: $PACKAGE..."
echo "--------------------------------------"

# Check if package is installed using dpkg (Ubuntu/Debian standard)
if dpkg -s "$PACKAGE" &> /dev/null; then
    echo "[+] $PACKAGE is installed."
    # Display Version and Description using grep and pipe
    dpkg -s "$PACKAGE" | grep -E '^Version|^Description' | head -n 2
else
    echo "[-] $PACKAGE is NOT installed."
    echo "(If missing, you can install it via: sudo apt update && sudo apt install vlc)"
fi

echo "--------------------------------------"
echo "Philosophy Note:"

# Case statement printing a one-line philosophy note based on package name
case $PACKAGE in
    apache2|httpd) 
        echo "Apache: the web server that built the open internet" 
        ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" 
        ;;
    vlc) 
        echo "VLC: Plays anything - built by students in Paris" 
        ;;
    firefox) 
        echo "Firefox: A nonprofit fighting for an open web" 
        ;;
    *) 
        echo "Philosophy note not found for $PACKAGE." 
        ;;
esac
