#!/bin/bash

# Check if .bashrc file exists
if [ -f "$HOME/.bashrc" ]; then
    echo "Appending new environment variables to .bashrc..."

    # Append HELLO variable with the value of HOSTNAME
    echo "export HELLO=$HOSTNAME" >> "$HOME/.bashrc"

    # Append LOCAL variable with the value of whoami
    echo "LOCAL=\$(whoami)" >> "$HOME/.bashrc"

    echo "Environment variables appended to .bashrc."
else
    echo "Error: .bashrc file not found in the home directory."
fi

# Open another terminal
gnome-terminal
#xdg-terminal
