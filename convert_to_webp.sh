#!/bin/bash

# Check if a directory was provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 DIRECTORY"
    exit 1
fi

# Assign the first argument to DIRECTORY variable
DIRECTORY=$1

# Check if the provided argument is a directory
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: $DIRECTORY is not a directory."
    exit 1
fi

# Create a /webp subdirectory if it doesn't exist
WEBP_DIR="$DIRECTORY/webp"
if [ ! -d "$WEBP_DIR" ]; then
    mkdir "$WEBP_DIR"
fi

# Find and convert all JPEG and PNG files in the directory
find "$DIRECTORY" -maxdepth 1 -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) -exec bash -c 'FILE="$1"; WEBP_DIR="$2"; FILENAME=$(basename "$FILE"); cwebp "$FILE" -o "$WEBP_DIR/${FILENAME%.*}.webp"; echo "Converted $FILE to $WEBP_DIR/${FILENAME%.*}.webp"' _ {} "$WEBP_DIR" \;
