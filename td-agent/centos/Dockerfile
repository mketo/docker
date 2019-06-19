FROM keto/centos:7

ADD td-agent.repo /etc/yum.repos.d/td-agent.repo
ADD RPM-GPG-KEY-td-agent /etc/pki/rpm-gpg/RPM-GPG-KEY-td-agent

RUN yum -y install td-agent && yum clean all && rm -rf /var/cache/yum

RUN /usr/sbin/td-agent-gem install fluent-plugin-bigquery fluent-plugin-google-cloud --no-ri --no-rdoc -V

VOLUME ["/etc/td-agent"]

ENTRYPOINT ["td-agent"]
