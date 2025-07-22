Disk Monitoring Script for Ubuntu
This is a lightweight Bash script that monitors disk usage on an Ubuntu-based system and sends an email alert if disk usage exceeds a defined threshold (default is 80%).

📌 Perfect for system administrators and developers who want simple disk usage alerts without heavy monitoring tools.

📂 What It Does
Checks current disk usage of the root (/) partition.
If usage exceeds the defined threshold, it sends an alert via email.

🧾 Script
#!/bin/bash

# Set the threshold 
THRESHOLD=80

# Get the disk usage of the root (/)
USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//g')

# Check if usage is above the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage alert! Current usage is $USAGE%" | mail -s "Disk Alert: $USAGE% full" lakmaljayawardana432@gmail.com
fi

⚙️ Requirements
Ubuntu 
Bash Shell
mailutils package for sending emails





