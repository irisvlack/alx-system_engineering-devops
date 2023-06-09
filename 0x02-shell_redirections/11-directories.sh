#!/bin/bash

count=0

# Iterate over all directories and subdirectories, including hidden ones
while IFS= read -r -d '' dir
do
    # Exclude the current and parent directories
    if [ "$dir" != "." -a "$dir" != ".." ]
    then
        count=$((count+1))
    fi
done < <(find . -mindepth 1 -type d -print0)

echo "Number of directories and subdirectories: $count"

