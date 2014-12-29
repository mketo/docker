# Nginx

Dockerfile for Nginx, pushed to dockers automated build process and public Docker hub registry.


## Base Docker Image

* [centos:centos7](https://registry.hub.docker.com/_/centos/)


## Usage

	docker run -d -p 80:80 keto/nginx


Override default nginx configation file:

	docker run -d -p 80:80 -v /home/core/nginx/nginx.conf:/etc/nginx/nginx.conf:ro keto/nginx

