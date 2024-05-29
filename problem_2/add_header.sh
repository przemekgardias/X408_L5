#!/usr/bin/bash


header="/* Property of Blaa.co 1882 */"

files_i_care_about=( *.c )

for file in "${files_i_care_about[@]}"; do

    if [[ -f $file ]]; then
        # Create a temporary file to store the new content
        temp_file=$(mktemp)

        # Add the header to the temporary file and append the content of the current file
        echo "$header" > "$temp_file"
        cat "$file" >> "$temp_file"

        # Move the temporary file to replace the original file
        mv "$temp_file" "$file"
        echo "Added header to $file"
    fi
done
