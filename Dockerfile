FROM ubuntu:18.04
RUN apt update
RUN apt install apache2 -y
RUN apt install curl -y
RUN echo "shitstorm" > /var/www/html/index.html
VOLUME ["/var/www", "/var/log/apache2", "/etc/apache2"]
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
