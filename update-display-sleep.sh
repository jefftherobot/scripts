#!/bin/bash
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin

CURRENT_SETTING=`/usr/bin/pmset -g | /usr/bin/grep displaysleep | /usr/bin/awk '{print $2}'`
echo $CURRENT_SETTING
if [ "$CURRENT_SETTING" = "180" ]; then
	echo "Already at 3 hours"
else
	pmset -c displaysleep 180; echo "Set Display sleep to 180"
fi
