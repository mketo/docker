# Memcached

Dockerfile for memcached.


## Base Docker Image

* [keto:centos](https://hub.docker.com/r/keto/centos)


## Usage

	docker run -d -p 11211:11211 keto/memcached


Start memcached with 1024MB memory and 4096 max simultaneous connections:

	docker run -d -p 11211:11211 keto/memcached -m 1024 -c 4096


Execute like this to view help:

	docker run -it --rm keto/memcached -h
