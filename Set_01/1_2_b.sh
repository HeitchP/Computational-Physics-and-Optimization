#!/bin/bash
# Script to print the content of each file in each directory recursively and write to sentence.txt

# Initialize or clear sentence.txt
> sentence.txt

# Define the root directory (partB)
root_dir="partB"

# Find all files recursively inside partB
find "$root_dir" -type f | while read file
do
  echo "Processing file: $file"
  
  # Print the content of the file
  cat "$file"
  
  # Append the content of the file to sentence.txt
  tr '\n' ' ' < "$file" >> sentence.txt

done

echo "All files have been processed and written to sentence.txt."
