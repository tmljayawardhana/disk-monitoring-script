#!/bin/bash

# Set the threshold (percentage)
THRESHOLD=1

# Get the disk usage of the root (/)
USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//g')

# Check if usage is above the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage alert! Current usage is $USAGE%" | mail -s "Disk Alert: $USAGE% full" lakmaljayawardana432@gmail.com
fi
notify-send "Disk usage alert: $USAGE% full"
