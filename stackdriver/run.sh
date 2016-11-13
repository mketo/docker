#!/bin/bash

if [ -z "$api_key" ]; then
    echo "Enviroment variable api_key not found!"
    exit 1
fi

/opt/stackdriver/stack-config --api-key=$api_key --write-gcm --no-start
/etc/init.d/stackdriver-agent start

while true; do
	sleep 60
	agent_pid=$(cat /var/run/stackdriver-agent.pid 2>/dev/null)
	extractor_pid=$(cat /var/run/stackdriver-extractor.pid 2>/dev/null)

	ps -p $agent_pid > /dev/null 2>&1
	if [ $? != 0 ]; then
		echo "Stackdriver agent pid not found!"
		break;
	fi

	ps -p $extractor_pid > /dev/null 2>&1
	if [ $? != 0 ]; then
		echo "Stackdriver extractor pid not found!"
		break;
	fi
done

