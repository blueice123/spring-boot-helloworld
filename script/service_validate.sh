#!/usr/bin/env bash

while [ true ]
do
    if [ "$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://localhost")" = '200' ]
    then
        exit 0
    else
        echo "check server is running?"
        sleep 3s
    fi
done
