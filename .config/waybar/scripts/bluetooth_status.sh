#!/bin/bash

if bluetoothctl show | grep -q "Powered: yes"; then
    status=""
    connected=$(bluetoothctl info | grep "Connected: yes")
    if [ -n "$connected" ]; then
        status=""
    fi
else
    status="󰂲"
fi

echo " $status "
