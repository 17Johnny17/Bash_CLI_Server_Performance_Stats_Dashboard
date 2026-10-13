#!/usr/bin/bash

echo "System Stats"
echo "Host: $HOSTNAME"
echo "Uptime: $(uptime -p)"

# Disk Stats
echo -e "\nDISK USAGE (/)"
# Printing total amount of disk space
read -r DISK_SIZE DISK_USED DISK_AVAIL DISK_PERCENT < <(df -h --output=size,used,avail,pcent / | tail -n 1)

echo "Total Disk Space: $DISK_SIZE"

# Printing total amount of disk space used in percent form
echo "Total Amount of Space Used: $DISK_USED $DISK_PERCENT"

# Printing total amount of available disk space
echo "Total Amount of Space Available: $DISK_AVAIL"

# Memory Stats
echo -e "\nMEMORY USAGE"
echo "$(free -h)"
