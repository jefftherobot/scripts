#!/bin/bash

osascript n9-bt-pan.applescript
sleep 1 
adb connect 192.168.44.1:5555
adb devices
adb forward tcp:8022 tcp:8022
sleep 1
ssh localhost -p 8022
