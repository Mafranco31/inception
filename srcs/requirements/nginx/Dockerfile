FROM debian:12.6

RUN apt update -y && apt upgrade -y && apt install -y nginx && apt install -y openssl && apt install -y systemctl && apt install -y vim && apt install -y curl

EXPOSE 443

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -noenc \
        -out /etc/nginx/ssl/inception.crt \
        -keyout /etc/nginx/ssl/inception.key \
        -subj "/C=ES/ST=BCN/L=Barcelone/O=42/OU=42Barcelona/CN=mafranco.42.fr/UID=mafranco@student.42barcelona.com"

RUN sed -i '46s/.*/     gzip off;/' /etc/nginx/nginx.conf

COPY ./conf/conf.conf etc/nginx/conf.d/conf.conf
RUN chmod +x etc/nginx/conf.d/conf.conf

COPY ./tools/index.html /var/www/html/

CMD ["systemctl", "start", "nginx"]

#RUN mv etc/nginx/sites-enabled/default etc/nginx/conf.d/default.conf
#COPY ./tools/tool.sh /
#RUN chmod 777 tool.sh
#RUN bash tool.sh
