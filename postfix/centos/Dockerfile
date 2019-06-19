FROM keto/centos:7

ADD epel.repo /etc/yum.repos.d/epel.repo
ADD RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

RUN yum -y install postfix && \
	yum clean all && rm -rf /var/cache/yum

EXPOSE 25

ENTRYPOINT ["postfix"]
CMD ["start"]