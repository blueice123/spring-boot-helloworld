#!/bin/bash
TM=$(date +%F_%T)
# CodeDeploy로 배포된 파일의 권한 변경 
chown -R ec2-user.  /spring-boot-helloworld/release

# # 이전에 실행되었던 jar 파일을 백업 
# mv /spring-boot-helloworld/src-0.0.1-SNAPSHOT.jar /spring-boot-helloworld/$TM.jar

# jar 파일을 배포 
rsync --delete-before --verbose --archive  /spring-boot-helloworld/release/*.jar /spring-boot-helloworld/ >> /var/log/deploy.log
