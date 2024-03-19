#!/bin/bash

# MySQL database details
db_user="root"
db_password=""
db_name="KAUSHAL"

# Loop indefinitely
while true; do
    # Create a timestamp for the backup file
    timestamp=$(date +"%Y%m%d%H%M%S")
    backup_file="./db_backup_$timestamp.sql"

    # Use mysqldump to create a backup
    mysqldump -u "$db_user" -p"$db_password" "$db_name" > "$backup_file"

    # Check if the backup was successful
    if [ $? -eq 0 ]; then
        echo "MySQL backup completed successfully. Backup saved to: $backup_file"
    else
        echo "Error: MySQL backup failed."
    fi

    # Wait for 1 minute before the next iteration
    sleep 60
done
