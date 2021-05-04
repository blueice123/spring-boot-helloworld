#!/bin/bash 
case "$1" in
        start)
            sh /spring-boot-helloworld/ApplicationStart.sh
            ;;
        stop)
            sh /spring-boot-helloworld/ApplicationStop.sh
            ;;
        status)
            netstat -nlp | grep 8080
            ;;
        restart)
            stop
            start
            ;;
        *)
            echo $"Usage: $0 {start|stop|restart|status}"
            exit 1
esac