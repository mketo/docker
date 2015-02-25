# Stackdriver

Dockerfile for stackdriver, pushed to dockers automated build process and public Docker hub registry.


## Base Docker Image

* [centos:centos7](https://registry.hub.docker.com/_/centos/)


## Usage

	docker run -d -e "api_key=[replace with your api key]" keto/stackdriver


Add your own configation file(s):

	docker run -d -e "api_key=[replace with your api key]" -v /home/core/stackdriver/collectd.d:/opt/stackdriver/collectd/etc/collectd.d:ro keto/stackdriver

