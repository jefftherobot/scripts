#!/bin/bash

#log stream --style syslog --predicate '(subsystem == "com.apple.bluetooth") && (eventMessage CONTAINS[c] "Play Release") || (eventMessage CONTAINS[c] "Pause Release")'
log stream --info --debug | awk '/Play Release|Pause Release/ { cmd="~/scripts/pianobar-playpause.sh "$9;system(cmd)}'
