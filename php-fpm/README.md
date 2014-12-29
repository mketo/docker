# Php-fpm

Dockerfile for php-fpm, pushed to dockers automated build process and public Docker hub registry.


## Base Docker Image

* [centos:centos7](https://registry.hub.docker.com/_/centos/)


## Usage

	docker run -d -p 9000:9000 keto/php-fpm


Override default php-fpm configation file:

	docker run -d -p 9000:9000 -v /home/core/php/php-fpm.conf:/etc/php-fpm.conf:ro keto/php-fpm

