#!/bin/bash

# Script to count files in a directory using find command

# Get the script name (without full path)
script_name=$(basename "$0")

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $script_name <absolute-path-to-directory>"
    exit 1
fi

# Assign the provided argument to a variable
directory_path="$1"

# Check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "❌ Error: '$directory_path' is not a valid directory"
    exit 2
fi

# Count the number of regular files in the directory (not subdirectories)
file_count=$(find "$directory_path" -maxdepth 1 -type f | wc -l)

# Output the results
echo "📂 Directory: $directory_path"
echo "📄 Number of files: $file_count"
