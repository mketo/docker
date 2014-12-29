FROM centos:centos7

MAINTAINER NGINX Mikael Keto

# add nginx repository and gpg key
ADD nginx.repo /etc/yum.repos.d/nginx.repo
ADD RPM-GPG-KEY-nginx /etc/pki/rpm-gpg/RPM-GPG-KEY-nginx

# update system and install nginx
RUN yum -y update && yum -y install nginx && yum clean all

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

VOLUME ["/var/cache/nginx"]

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
