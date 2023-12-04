#!/bin/bash
#MENNA ASHRAF

# Define and create the backups directory if it does not exist
backup_dir="backups"
mkdir -p "$backup_dir"

# Get the date of the current directory in year month and day
current_date=$(date +"%Y%m%d")

# Assuming 'dir' is provided as a command-line argument
dir="$1"

# Check if 'dir' is not provided
if [ -z "$dir" ]; then
    echo "Error: No directory provided. Usage: $0 <directory>"
    exit 1
fi

# Extract the base directory name
base_dir=$(basename "$dir")

# Creating the backup filename
backup_filename="backup_${base_dir}_${current_date}.tar.gz"

# Archiving and compressing the working directory
tar czf "${backup_dir}/${backup_filename}" "$dir"

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Backup of '$dir' is successful. Backup stored in '$backup_dir/$backup_filename'."
else
    echo "Error: Backup of '$dir' failed."
fi

