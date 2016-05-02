FROM centos:centos7

MAINTAINER Mikael Keto

# install openssh server
RUN yum -y install openssh-server && yum clean all

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd"]
CMD ["-D"]