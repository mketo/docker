# Nodejs

Dockerfile for NodeJS.


## Base Docker Image

* [keto:centos](https://hub.docker.com/r/keto/centos)


## Usage

	docker run -d --entrypoint node -p 80:80 keto/nodejs


Execute like this to view help:

	docker run --entrypoint node -it --rm keto/nodejs -h
