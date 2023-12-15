#! /bin/bash

# Read the content of the file,
# remove all white spaces and
# count the remaining characters
MESSAGE=$(cat 'JUJAyetu.txt' | tr -d '[:space:]' | wc -m)

# Print the character count
echo "Character count is :" $MESSAGE