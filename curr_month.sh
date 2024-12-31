#!/bin/bash

# Get current date in YYYY/MM/DD format
current_date=$(date +%Y/%m)

# Construct the desired file paths
logs_dir="./logs"  # Replace with the actual path to your logs folder
target_dir="$logs_dir/$current_date"

if [[ ! -d "$target_dir" ]]; then
    echo "Dir doesn't exist. Do you want to make it?"
    read answer
    if [[ "$answer" == "y" ]]; then
	    mkdir -p $target_dir
    else 
        exit
    fi
else 
    echo "transporting to the directory: $target_dir"
fi

cd "$target_dir"
