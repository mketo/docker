# Memcached

Dockerfile for memcached, pushed to dockers automated build process and public Docker hub registry.


## Base Docker Image

* [centos:centos7](https://registry.hub.docker.com/_/centos/)


## Usage

	docker run -d -p 11211:11211 keto/memcached


Start memcached with 1024MB memory and 4096 max simultaneous connections:

	docker run -d -p 11211:11211 keto/memcached -m 1024 -c 4096


Execute like this to view help:

	docker run -it --rm keto/memcached -h

