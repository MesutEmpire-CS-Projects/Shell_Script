#!/bin/bash

# Prompts the user to enter the IP address
read -p "Enter your IP address : " IP

# Performs a ping scan  to check for host attached to the IP
nmap -sn "$IP"
