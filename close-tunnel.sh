#!/bin/bash
if [ -e ~/tunnel.pid ] 
then
	kill `cat ~/tunnel.pid`
	rm ~/tunnel.pid
fi

