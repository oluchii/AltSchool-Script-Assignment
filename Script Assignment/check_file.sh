#!/bin/bash
# Script to check if a file exists

# Get the script name
script_name=$(basename "$0")

# Check if a filename argument was provided
if [ $# -eq 0 ]; then
    echo "Usage: $script_name <filename>"
    exit 1
fi

# Store the filename argument
filename="$1"

# Check if the file exists
if [ -f "$filename" ]; then
    echo "✅ File '$filename' exists."
else
    echo "❌ File '$filename' does not exist."
fi