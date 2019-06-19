FROM keto/centos:7

ADD mariadb.repo /etc/yum.repos.d/mariadb.repo

RUN yum -y install MariaDB-server MariaDB-client && yum clean all && rm -rf /var/cache/yum

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["mysqld"]