#!/bin/bash

# Get the username of the user who just logged in
logged_in_user=$(whoami)

# Check if the logged-in user is root
if [ "$logged_in_user" == "root" ]; then
    echo "Welcome, root user!"
else
    echo "Welcome, $logged_in_user! You are not root."
fi
