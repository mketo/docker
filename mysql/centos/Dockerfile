FROM keto/centos:7

ADD mysql.repo /etc/yum.repos.d/mysql.repo
ADD RPM-GPG-KEY-mysql /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

RUN yum -y install mysql-community-server && yum clean all && rm -rf /var/cache/yum

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["mysqld"]