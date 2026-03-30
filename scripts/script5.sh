#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Bansal Kriti Ganesh
# Course: Open Source Software

# Concept demonstrated: aliases (commented out as per rubric)
# alias read_manifesto="cat manifesto_*.txt"

echo "=================================================="
echo " Answer three questions to generate your manifesto."
echo "=================================================="

# Read commands for user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--------------------------------------------------"
echo "Generating Manifesto..."

# Composing the paragraph and writing to file with > and >>
echo "My Open Source Manifesto - $DATE" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I rely on tools like $TOOL to learn, create, and explore." >> "$OUTPUT"
echo "To me, open source is fundamentally about $FREEDOM." >> "$OUTPUT"
echo "If I could contribute to this ecosystem, I would build $BUILD and share it with the world." >> "$OUTPUT"

echo "[+] Manifesto saved to $OUTPUT"
echo "=================================================="

# Displaying the generated file
cat "$OUTPUT"
