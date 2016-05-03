# SSH

Dockerfile for ssh, pushed to dockers automated build process and public Docker hub registry.


## Base Docker Image

* [centos:centos7](https://registry.hub.docker.com/_/centos/)


## Environment variables

	SSH_GID
	SSH_PASSWORD
	SSH_PATH
	SSH_UID
	SSH_UMASK
	SSH_USERNAME

## Usage

	docker run -d keto/ssh 
	
To run the container, binding to port 2222 on the host:
	# docker run --name ssh -d -p 2222:22 keto/ssh

Obtain the password via docker logs:
	# Docker logs ssh | grep 'SSH User password'
	# SSH User password: jvwxSwu9fcwaUGtkXRD1okSD56M
	
You can set a specific password using the `SSH_PASSWORD` environment variable:

	# docker run -p 2222:22 -e SSH_PASSWORD=mypassword keto/ssh
