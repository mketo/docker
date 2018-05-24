FROM centos:centos7

MAINTAINER Mikael Keto

COPY entrypoint.sh /entrypoint.sh

# install openssh server
RUN yum -y install openssh-server unison && \
yum clean all && \
chmod 755 /entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]