FROM keto/alpine:3.9

RUN apk add --no-cache php7 \
	php7-bcmath \
	php7-enchant \
	php7-gd \
	php7-intl \
	php7-mbstring \
	php7-pecl-mcrypt \
	php7-mysqli \
	php7-mysqlnd \
	php7-opcache \
	php7-pdo \
	php7-soap \
	php7-xml \
	php7-pecl-memcached

CMD ["php", "-a"]
