FROM centos:centos7

MAINTAINER Mikael Keto

# add epel repository and gpg key
ADD epel.repo /etc/yum.repos.d/epel.repo
ADD RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

# install php and various extensions
RUN yum -y install php \
php-fpm \
php-bcmath \
php-enchant \
php-gd \
php-IDNA_Convert \
php-intl \
php-mbstring \
php-mysql \
php-pecl-zendopcache \
php-pdo \
php-PHPMailer \
php-process \
php-simplepie \
php-soap \
php-xml \
php-pecl-geoip \
php-pecl-memcache && \
yum clean all

EXPOSE 9000

CMD ["php-fpm", "-F"]
