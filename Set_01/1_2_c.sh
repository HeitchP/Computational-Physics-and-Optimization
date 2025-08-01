#!/bin/bash
# Script to create a directory and file, and rename the directory if it already exists

# Directory and file names
dir_name="1_2_c"
file_name="1_2_c.txt"

# Function to rename the directory if it already exists
function create_directory() {
    local new_dir="$dir_name"
    local counter=1

    # Check if directory exists, if so, append a number to its name
    while [ -d "$new_dir" ]; do
        new_dir="${dir_name}_$counter"
        counter=$((counter + 1))
    done

    # Create the new directory
    mkdir "$new_dir"
    echo "Directory created: $new_dir"

    # Create the file inside the new directory
    touch "$new_dir/$file_name"
    echo "File created: $new_dir/$file_name"
}

# Call the function to create the directory and file
create_directory
