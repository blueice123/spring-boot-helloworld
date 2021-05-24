#!/usr/bin/env bash

while [ true ]
do
    if [ "$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://localhost:8080")" = '200' ]
    then
        echo "systemctl restart codedeploy-agent" | at -M now + 2 minute;
        exit 0
    else
        echo "check server is running?"
        sleep 3s
    fi
done
