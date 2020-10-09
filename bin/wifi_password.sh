#!/bin/bash

# the command from http://bit.ly/2zWtUhQ
current_wifi=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}')
security find-generic-password -a "$current_wifi" -g | tail -0

