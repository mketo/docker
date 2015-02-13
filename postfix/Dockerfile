FROM centos:centos7

MAINTAINER Mikael Keto

# add epel repository and gpg key
ADD epel.repo /etc/yum.repos.d/epel.repo
ADD RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

# install postfix
RUN yum -y install postfix && \
yum clean all

EXPOSE 25

ENTRYPOINT ["postfix"]
CMD ["start"]