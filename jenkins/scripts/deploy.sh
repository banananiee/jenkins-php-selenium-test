#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app -v https://github.com/banananiee/jenkins-php-selenium-test.git/src:/var/www/html php:7.2-apache
sleep 1
set +x

echo 'Now...'
echo 'Visit 151.192.145.165 to see your PHP application in action.'

