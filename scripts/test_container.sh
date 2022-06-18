#!/bin/bash
count=0
started=false

until $started || [ $count -gt 3 ]
do
	((count++))
	echo "[${STAGE_NAME}] starting container [Attempt: ${count}]"
	
	resp_code=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost:8081)

	if [ $resp_code -eq 200 ]
	then
	    started=true
	else
		sleep 2
	fi
done

if [ $started ]
then
    echo "SUCCESS"
else
	echo "FAILED"
	exit 1
fi