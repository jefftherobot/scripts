#!/bin/bash

adb devices
adb forward tcp:8022 tcp:8022
sleep 1
ssh localhost -p 8022
