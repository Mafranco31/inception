FROM debian:12.6

RUN apt update -y && apt upgrade -y && apt install -y \
    vim \
    curl \
    php8.2 \
    php-fpm \
    php-mysql \
    php-cgi \
    wget \
    netcat-openbsd \
    mariadb-server

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/

RUN mkdir /run/php -p

COPY ./tools/tool.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/tool.sh
ENTRYPOINT ["/usr/local/bin/tool.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm8.2", "-F"]