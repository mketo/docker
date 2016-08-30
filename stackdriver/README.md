# Stackdriver

Dockerfile for stackdriver, pushed to dockers automated build process and public Docker hub registry.


## Base Docker Image

* [centos:centos7](https://registry.hub.docker.com/_/centos/)


## Usage

	docker run -d keto/stackdriver


Add your own configation file(s):

	docker run -d -v /home/core/stackdriver/collectd.d:/opt/stackdriver/collectd/etc/collectd.d:ro keto/stackdriver

