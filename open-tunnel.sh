#!/bin/bash
ssh -L localhost:6667:irc.freenode.net:6667 localhost -p 8022 -N -v &
echo $! > ~/tunnel.pid
