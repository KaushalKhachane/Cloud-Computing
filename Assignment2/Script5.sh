#!/bin/bash

# Get the list of users
users=$(cut -d: -f1 /etc/passwd)

echo "Number of existing users: $(echo "$users" | wc -w)"

# Display user permissions
for user in $users; do
    user_permissions=$(id -nG "$user" | tr ' ' ',')
    echo "User: $user, Permissions: $user_permissions"
done
