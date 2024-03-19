#!/bin/bash

# Get the new username from command line argument
new_user=$1

# Check if a username is provided
if [ -z "$new_user" ]; then
    echo "Usage: $0 <new_username>"
    exit 1
fi

# Create a welcome message
welcome_message="Welcome, $new_user! We are glad to have you on our system."

# Print the welcome message
echo "$welcome_message"

# Create a welcome text file in the current working directory
welcome_file="./welcome_$new_user.txt"
echo "$welcome_message" > "$welcome_file"

echo "Welcome text file created: $welcome_file"
