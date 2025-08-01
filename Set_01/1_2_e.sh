#!/bin/bash
# Script to download the text file and save it as 1_2_e.txt

# URL of the text file
url="http://facultymembers.sbu.ac.ir/movahed/attachments/data_E.txt"

# Output file
output_file="1_2_e.txt"

# Use curl to download the file and write to output_file
curl -o "$output_file" "$url"

# Check if the file was downloaded successfully
if [ $? -eq 0 ]; then
    echo "File downloaded successfully and saved as $output_file"
else
    echo "Failed to download the file."
fi

