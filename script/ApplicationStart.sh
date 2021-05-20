#!/usr/bin/env bash

cd /spring-boot-helloworld/
sudo nohup java -jar -Dserver.port=8080 \
        ./src-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 &
sleep 3
  