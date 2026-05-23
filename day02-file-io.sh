#!/bin/bash

tempfile="day02-output.txt"

echo "Writing first line to file..."
echo "Hello from Day 2!" > "$tempfile"

echo "Appending second line..."
echo "This line was added with append." >> "$tempfile"

echo "Reading the file back:"
cat "$tempfile"

echo "Cleaning up..."
rm "$tempfile"

echo "Done!"
