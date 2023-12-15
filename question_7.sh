#!/bin/bash

#The subject of the email
SUBJECT="INVITATION TO THE 3RD YEAR PROJECTS WEBINAR"

#The content of the invitation letter
INVITATION_LETTER="Inviting the you as our computing student to our 3rd Year Projects on innovation incubation scheduled Monday 23rd October from 10:00 A.M.\n\nThe Zoom link for joining in on Friday is as given below.\n\nWe shall also broadcast the webinar on our youtube channel. Youtube link: https://youtu.be/ONVTA7LKMIs"

#Senders Email Address
FROM_EMAIL="mesut.empire00@gmail.com"

# Read the names and email addresses from the student's file
while IFS=, read -r NAME TO_EMAIL
do
  # Concatenating the salutations and letter contents
  EMAIL="Dear $NAME,\n\n$INVITATION_LETTER"

  # Send the email using the mail by specifying the sender,recipient ans subject
  echo -e "$EMAIL" | mail -s "$SUBJECT" "$TO_EMAIL" -r "$FROM_EMAIL"

  # Print success message after sending email
  echo "Invitation sent to $NAME at $TO_EMAIL"
done < "student.txt"