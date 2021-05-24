#!/usr/bin/env bash

sudo killall java
sleep 3
sudo nohup java -jar -Dserver.port=8080 /spring-boot-helloworld/src-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 &
sleep 3
  