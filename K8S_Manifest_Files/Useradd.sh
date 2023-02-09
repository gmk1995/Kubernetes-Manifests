#!/bin/bash

# Check if the user is running the script as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Get the username
echo -n "Enter the username: "
read username

# Check if the username already exists
if id "$username" >/dev/null 2>&1; then
    echo "User $username already exists"
    exit 1
fi

# Create the user
useradd -m $username

# Set the password for the user
echo "Setting password for $username"
passwd $username

# Add the user to the 'sudo' group (if necessary)
echo "Adding $username to the sudo group"
usermod -aG sudo $username

echo "User $username has been added successfully"