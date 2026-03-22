#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Nihaar Gupta

echo "======================================"
echo " Open Source Manifesto Generator"
echo " Author: Nihaar Gupta"
echo "======================================"
echo ""

# -------- USER INPUT --------
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# -------- DATE --------
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)

# -------- OUTPUT FILE --------
OUTPUT="manifesto_$USER_NAME.txt"

# -------- GENERATE MANIFESTO --------
echo "--------------------------------------" > $OUTPUT
echo " Open Source Manifesto" >> $OUTPUT
echo "--------------------------------------" >> $OUTPUT
echo "Name: Nihaar Gupta" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe that open-source software represents $FREEDOM." >> $OUTPUT
echo "Every day, I rely on tools like $TOOL that are built by a global community." >> $OUTPUT
echo "In the future, I want to create and freely share $BUILD with the world." >> $OUTPUT
echo "Knowledge should be open, collaborative, and accessible to everyone." >> $OUTPUT

# -------- DISPLAY --------
echo ""
echo "Manifesto saved to $OUTPUT ✅"
echo ""
cat $OUTPUT

echo "======================================"