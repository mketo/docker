FROM keto/centos:7

# install nodejs (https://github.com/nodesource/distributions)
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash - && \
	yum -y install gcc-c++ git make nodejs && \
	yum clean all && rm -rf /var/cache/yum