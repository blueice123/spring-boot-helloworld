#!/usr/bin/env bash

# 기존의 relese 환경을 삭제
if [ -d /spring-boot-helloworld/release ]; then
    sudo rm -rf /spring-boot-helloworld/release
fi
sudo mkdir -vp /spring-boot-helloworld/release
