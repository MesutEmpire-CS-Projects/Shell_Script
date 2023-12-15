#! /bin/bash

# Prompt the user to enter 5 numbers
echo Enter your 5 numbers

#Initialize sum var
SUM=0

# Loop to read 5 times
for (( i = 1 ; i<=5 ; i++ ))
do
  # Prompt the user for the i-th number
  read -p  "Enter your $i number :" VALUE
  # Add the value to the sum
  let SUM=$((SUM+VALUE))
done

#Print the sum
echo Sum is : $SUM