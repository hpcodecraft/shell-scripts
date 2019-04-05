#!/bin/sh
ioreg -n "AppleBluetoothHIDMouse" | grep -i "batterypercent" | sed 's/[^[:digit:]]//g' 
