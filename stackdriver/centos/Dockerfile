FROM keto/centos:7

RUN curl -o /etc/yum.repos.d/stackdriver.repo https://repo.stackdriver.com/stackdriver-el7.repo

RUN yum -y install initscripts stackdriver-agent && yum clean all && rm -rf /var/cache/yum

RUN mkdir -p /var/lock/subsys; exit 0
ADD run.sh /run.sh
RUN chmod 755 /run.sh

CMD ["/run.sh"]
