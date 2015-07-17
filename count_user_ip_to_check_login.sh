#!/bin/sh

PROGNAME=`basename $0`
VERSION="Version 0.1"
AUTHOR="2015, Nickolay Kuropatkin (email: nictaporuk@yandex.ru)"

cat /var/log/nginx/access.log.getiss | grep login_check | awk '{print $1}' | sed 's\,\\g' | sed 's\":\\g' | sed 's\"\\g' | sort | uniq -c | sort -nr  >> /var/tmp/login_check