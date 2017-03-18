FROM centos:centos7

MAINTAINER Mikael Keto

# install nodejs (https://github.com/nodesource/distributions)
RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash - && \
yum -y install gcc-c++ make nodejs && \
yum clean all

ENTRYPOINT ["node"]
