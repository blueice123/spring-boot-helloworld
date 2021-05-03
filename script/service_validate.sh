#!/usr/bin/env bash

while [ true ]
do
    if [ "$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://localhost:8080")" = '200' ]
    then
        exit 0
    else
        echo "check server is running?"
        sleep 3s
        curl http://localhost
        curl http://localhost:8080
        sudo netstat -nlp |grep 8080
        ps -ef | grep java
    fi
done
