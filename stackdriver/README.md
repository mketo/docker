# Stackdriver

Dockerfile for Stackdriver.


## Base Docker Image

* [keto:centos](https://hub.docker.com/r/keto/centos)


## Usage

	docker run -d keto/stackdriver


Add your own configation file(s):

	docker run -d -v /home/core/stackdriver/collectd.d:/opt/stackdriver/collectd/etc/collectd.d:ro keto/stackdriver
