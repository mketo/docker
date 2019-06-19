# Nginx

Dockerfile for Nginx.


## Base Docker Image

* [keto:alpine](https://hub.docker.com/r/keto/alpine)
* [keto:centos](https://hub.docker.com/r/keto/centos)


## Usage

	docker run -d -p 80:80 keto/nginx


Override default nginx configation file:

	docker run -d -p 80:80 -v /home/core/nginx/nginx.conf:/etc/nginx/nginx.conf:ro keto/nginx
