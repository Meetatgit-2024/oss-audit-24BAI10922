#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Description: Generates a personalized manifesto based on user input

echo "Answer the following questions:"
echo ""

# -------- User Input --------
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')              # Get current date
OUTPUT="manifesto_$(whoami).txt"      # Output file name

# -------- Create File (Overwrite) --------
> $OUTPUT   # Clear previous content

# -------- Write Manifesto --------
echo "----------------------------------" >> $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "----------------------------------" >> $OUTPUT
echo "I believe in the power of open-source software." >> $OUTPUT
echo "Using tools like $TOOL, I experience $FREEDOM in technology." >> $OUTPUT
echo "I aspire to build $BUILD and share it freely with the world." >> $OUTPUT
echo "----------------------------------" >> $OUTPUT

# -------- Display Output --------
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
