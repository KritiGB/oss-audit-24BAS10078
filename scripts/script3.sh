#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Bansal Kriti Ganesh
# Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================"
echo "        Directory Audit Report        "
echo "======================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, user, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract size, suppressing permission denied errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "[+] $DIR => Perms/Owner: $PERMS | Size: $SIZE"
    else
        echo "[-] $DIR does not exist on this system"
    fi
done

echo "--------------------------------------"
echo "Checking VLC Configuration Directory:"

# VLC's user config is typically stored here
VLC_CONF="$HOME/.config/vlc"

if [ -d "$VLC_CONF" ]; then
    VLC_PERMS=$(ls -ld "$VLC_CONF" | awk '{print $1, $3, $4}')
    echo "[+] VLC config found at $VLC_CONF"
    echo "    Perms/Owner: $VLC_PERMS"
else
    echo "[-] VLC config directory not found at $VLC_CONF."
    echo "    (Note: You may need to run 'vlc' once to generate this folder)."
fi
echo "======================================"
