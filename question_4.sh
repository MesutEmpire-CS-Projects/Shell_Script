#!/bin/bash

# Prompt the user to enter the path to a directory
read -p "Enter the path to the directory : " DIRECTORY

# Create an empty array
EMPTY_FOLDERS=()

# Loop through the empty folders in the directory
for EMPTY_FOLDER in $(find "$DIRECTORY" -type d -empty); do
  # Insert the empty folder in the array
    EMPTY_FOLDERS+=("$EMPTY_FOLDER")
done

# Print the length of the empty folders array
echo "Number of empty folders: ${#EMPTY_FOLDERS[@]}"

# Loop through the list of empty folders
for FOLDER in "${EMPTY_FOLDERS[@]}"; do
   # Print the path of the empty folder and its timestamp
   echo "Empty folder: $FOLDER, Created: $(stat -c %y "$FOLDER")"
done

