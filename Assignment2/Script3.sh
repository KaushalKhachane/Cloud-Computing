#!/bin/bash

# Set the threshold for disk usage
THRESHOLD=5

# Get disk usage percentage for the root filesystem
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Check if disk usage is above the threshold
if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    # Email subject and body
    SUBJECT="Disk Usage Alert on $(hostname)"
    BODY="Disk usage on $(hostname) is above $THRESHOLD%. Current usage: $DISK_USAGE%."

    # Send email using mailx
    echo "$BODY" | mailx -s "$SUBJECT" khachaneks22@gmail.com

    echo "Disk usage is above $THRESHOLD%. Email sent to admin."
else
    echo "Disk usage is below $THRESHOLD%. No action taken."
fi
