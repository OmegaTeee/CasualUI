#!/bin/bash

# Define the input and output files
input_file="$1"

# Check if the input file has a .css extension
if [[ "$input_file" != *.css ]]; then
  echo "Error: Input file must have a .css extension."
  exit 1
fi

output_file="${input_file%.*}.uss"

# Define directories
# project_root="/Users/Account/Project/Solution"
# working_dir="Assets/Runtime/Sources"
# output_dir="Assets/Runtime/Resources"

# Change to the project root directory
# cd "$project_root" || exit

# Run PostCSS with the specified configuration
postcss "$input_file" -o "$output_file" --config postcss.config.js

# Check if PostCSS ran successfully
if [ $? -eq 0 ]; then
  echo "PostCSS processing completed successfully."
else
  echo "PostCSS processing failed."
  exit 1
fi