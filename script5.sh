#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Let's generate your personal Open Source Manifesto."
echo "Please answer the following three questions:"
echo "------------------------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Composing the paragraph and writing to file
# Using > to overwrite/create the file, and >> to append
echo "=====================================" > "$OUTPUT"
echo " MY OPEN SOURCE MANIFESTO ($DATE) " >> "$OUTPUT"
echo "=====================================" >> "$OUTPUT"
echo "As a developer, I rely on tools like $TOOL every single day to bring my ideas to life. To me, the philosophy of open source is ultimately about $FREEDOM." >> "$OUTPUT"
echo "Knowledge shouldn't be locked behind a paywall. If I could contribute back to this incredible community, I would build a $BUILD and share it freely with the world, ensuring others have the same opportunities to learn, adapt, and innovate." >> "$OUTPUT"
echo "=====================================" >> "$OUTPUT"

echo "------------------------------------------------"
echo "[SUCCESS] Your manifesto has been saved to: $OUTPUT"
echo "Here is what it says:"
echo "------------------------------------------------"
cat "$OUTPUT"