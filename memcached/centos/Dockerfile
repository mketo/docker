FROM keto/centos:7

RUN yum -y install memcached && yum clean all && rm -rf /var/cache/yum

ENTRYPOINT ["memcached"]

USER memcached
EXPOSE 11211
CMD ["-u", "memcached", "-v"]