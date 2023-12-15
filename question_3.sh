#! /bin/bash

# Prompt the user to enter the UID
read -p "Enter the UID : " USER_UID

# Counts the number of times the specified UID has logged in
COUNT=$(who -u | grep -w "$USER_UID" | wc -l)

# Print the count of logins for the UID
echo "User : $USER_UID has logged in $COUNT times."