FROM keto/centos:7

ADD epel.repo /etc/yum.repos.d/epel.repo
ADD RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

COPY entrypoint.sh /entrypoint.sh

RUN yum -y install openssh-server unison240-text && \
	yum clean all && rm -rf /var/cache/yum && \
	chmod 755 /entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]