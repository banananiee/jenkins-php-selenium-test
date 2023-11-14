#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v /c/Users/M3500QC/Desktop/Yr3Tri1/3103/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit http://127.0.0.1/ to see your PHP application in action.'
