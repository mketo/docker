FROM centos:centos7

MAINTAINER Mikael Keto

# install memcached
RUN yum -y install memcached && yum clean all

EXPOSE 11211

CMD ["memcached", "-u", "memcached", "-v"]
