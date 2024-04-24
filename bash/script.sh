#!/bin/bash

LOCATION="$1"
FILECOUNT=0
DIRCOUNT=0

if [ "$#" -lt 1 ]; then
    echo "Usage: ./count_files.sh <directory>"
    exit 1
fi

for item in "$LOCATION"/*; do
    if [ -f "$item" ]; then
        FILECOUNT=$((FILECOUNT + 1))
    elif [ -d "$item" ]; then
        DIRCOUNT=$((DIRCOUNT + 1))
    fi
done

echo "File count: $FILECOUNT"
echo "Directory count: $DIRCOUNT"