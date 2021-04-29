#!/usr/bin/env bash
cd /home/ec2-user/spring-boot-hellowor

sudo nohup java -jar -Dserver.port=8080 \
        ./build/libs/spring-boot-helloworld-0.0.1-SNAPSHOT.jar >/dev/null 2>&1 &
sleep 5