# Php-fpm

Dockerfile for php-fpm 5.5.


## Base Docker Image

* [keto:centos](https://hub.docker.com/r/keto/centos)


## Usage

	docker run -d -p 9000:9000 keto/php-fpm


Override default php-fpm configation file:

	docker run -d -p 9000:9000 -v /home/core/php/php-fpm.conf:/etc/php-fpm.conf:ro keto/php-fpm
