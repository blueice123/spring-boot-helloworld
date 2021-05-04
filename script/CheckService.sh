#!/bin/bash 

case $1 in

  start)
    echo -n "start"
    sh /spring-boot-helloworld/release/ApplicationStart.sh
    ;;

  stop)
    echo -n "stop"
    sh /spring-boot-helloworld/release/ApplicationStop.sh
    ;;

  status)
    echo -n "status"
    sh /spring-boot-helloworld/release/ValidateService.sh
    ;;

  *)
    echo -n $"Usage: $0 {start|stop|restart|status}"
    exit 1
    ;;
esac

