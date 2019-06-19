FROM keto/centos:7

ADD nginx.repo /etc/yum.repos.d/nginx.repo
ADD RPM-GPG-KEY-nginx /etc/pki/rpm-gpg/RPM-GPG-KEY-nginx

RUN yum -y install nginx && \
	yum clean all && \
	rm -rf /var/cache/yum && \
	ln -sf /dev/stdout /var/log/nginx/access.log && \
	ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
