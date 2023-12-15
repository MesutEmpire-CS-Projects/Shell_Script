#!/bin/bash

# Prompt the user to enter the path to the directory that has the bmp files
read -p "Enter the path to the directory : " DIRECTORY

#Number of files changed
FILES_CHANGED=0

# Check if the path is valid
if [ -d "$DIRECTORY" ]; then

 # Loops trough the files with the .bmp extension in the directory
 for FILE in "$DIRECTORY"/*bmp; do
   # Check if the item is a file
   if [ -f "$FILE" ]; then
     # Create new file with by replacing .bmp with .jpeg
      NEW_FILE="${FILE%.bmp}.jpeg"

      # Rename the file from .bmp to .jpeg
      mv "$FILE" "$NEW_FILE"

      # Increment the number of files changed
      let FILES_CHANGED+=1

      # Print message once the file has been renamed
      echo "Renamed $FILE to $NEW_FILE"

    fi
    done
    # Print the number of files changed
    echo "Files changed : $FILES_CHANGED"
else
  # Print error if directory does not exist
    echo "Directory does not exist."
fi