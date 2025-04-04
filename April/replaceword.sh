#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <file> <old_word> <new_word>"
  exit 1
fi

file="$1"
old_word="$2"
new_word="$3"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found."
  exit 1
fi

# Use sed to replace the word in the file
sed -i "s/$old_word/$new_word/g" "$file"

# Check if sed was successful
if [ $? -eq 0 ]; then
  echo "Successfully replaced '$old_word' with '$new_word' in '$file'."
else
  echo "Error: Failed to replace word in '$file'."
  exit 1
fi

exit 0
