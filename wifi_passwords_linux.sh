#!/bin/bash

# Create output file
> ABC.txt

# Get all WiFi profiles
nmcli -t -f NAME connection show | while read -r profile; do
    # Skip empty profiles
    if [ -n "$profile" ]; then
        echo "=================================" >> ABC.txt
        echo "Processing profile: $profile" >> ABC.txt
        echo "=================================" >> ABC.txt
        echo >> ABC.txt
        
        # Show profile details with specific fields
        {
            echo "Name: $profile"
            nmcli -t connection show "$profile" | grep -E 'connection\.id|connection\.type|802-11-wireless\.ssid|802-11-wireless-security\.key-mgmt|802-11-wireless-security\.psk'
        } >> ABC.txt
        
        echo >> ABC.txt
        echo >> ABC.txt
    fi
done

exit 0