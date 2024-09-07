FROM debian:12.6

RUN apt update -y && apt upgrade -y

RUN apt install -y mariadb-server \
    systemctl

RUN etc/init.d/mariadb start

COPY ./tools/tool.sh /
COPY ./conf/wordpress.sql /usr/local/bin/install_db_wordpress.sql

EXPOSE 3306

CMD ["bash", "/tool.sh"]