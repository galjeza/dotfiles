#!/bin/bash

# Get the connected network's SSID
ssid=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)

# Output the SSID or a message if no network is connected
if [ -n "$ssid" ]; then
  echo " $ssid"
else
  echo "睊 Disconnected"
fi
