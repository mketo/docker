FROM centos:centos7

MAINTAINER Mikael Keto

# install openssh server
RUN yum -y install openssh-server && yum clean all

COPY entrypoint.sh /entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]