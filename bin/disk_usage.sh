#!/bin/bash

ALERT_LEVEL=50
used_per=$(df -h --type=ext4 --output=pcent | sed 1d | sed -r 's/^[^0-9]*([0-9]+).*/\1/')
if [ "$used_per" -gt "$ALERT_LEVEL" ];
then
	notify-send -u critical -i info "crontab alert: Disk usage is more than $used_per percent"
fi

