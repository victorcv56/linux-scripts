#!/bin/bash

status="$(systemctl is-active nginx)"

if [ "$status" = "active" ]; then
	echo "its active"
else
	echo "nginx stopped working at: $(date)" >> /var/log/nginx-log.txt
	systemctl start nginx
	echo "attempted restart at: $(date)" >> /var/log/nginx-log.txt
fi



