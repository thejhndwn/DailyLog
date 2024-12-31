#!/bin/bash

# Get current date in YYYY/MM/DD format
current_date=$(date +%Y/%m/%d)

# Construct the desired file paths
logs_dir="./logs"  # Replace with the actual path to your logs folder
target_file="$logs_dir/$current_date.md"
yesterday=$(date -d "yesterday" +%Y/%m/%d)
previous_file="$logs_dir/$yesterday.md"

echo "$previous_file"
# Check if today's file exists
if [[ ! -f "$target_file" ]]; then
  # Check if yesterday's file exists
  if [[ -f "$previous_file" ]]; then
    # Copy yesterday's file to today's file
    cp "$previous_file" "$target_file"
    echo "Copied '$previous_file' to '$target_file'"
    
  else
    echo "Neither today's nor yesterday's files exist."
  fi
else
  echo "File '$target_file' already exists."
fi
sleep 1
vim $target_file
