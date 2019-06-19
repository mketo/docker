#!/bin/bash

/opt/stackdriver/stack-config --write-gcm --no-start
/etc/init.d/stackdriver-agent start

while true; do
	sleep 60
	agent_pid=$(cat /var/run/stackdriver-agent.pid 2>/dev/null)

	ps -p $agent_pid > /dev/null 2>&1
	if [ $? != 0 ]; then
		echo "Stackdriver agent pid not found!"
		break;
	fi
done

