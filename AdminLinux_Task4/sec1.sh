#!/bin/bash

# variables for username and groupname 
username='MENNA_ASHRAF'
groupname='ELSELAWY' 

# Check if the user already exists
if id "$username" &>/dev/null; then         #check for user by the user ID #& for standard output and standard error to redirect it to file null if itis already exists
    echo "User '$username' already exists."
else
    # Create the user
    sudo useradd -m "$username"
    echo "User '$username' created."
fi

# Check if the group already exists
if getent group "$groupname" &>/dev/null; then   #gatent group for group database to check on group
    echo "Group '$groupname' already exists."
else
    # Create the group
    sudo groupadd "$groupname"
    echo "Group '$groupname' created."
fi

# Add the user to the group
sudo usermod -aG "$groupname" "$username"
echo "User '$username' added to group '$groupname'."

# Display information about the user and group
echo -e "\nMENNA Information:"  #\n for new line
id "$username"

echo -e "\nELSELAWY Information:"
getent group "$groupname" #gatent here to fetch group information from groupdatabase
