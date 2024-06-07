FROM ubuntu:latest

RUN apt update -y
RUN apt install apache2 -y
COPY . /var/www/html
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]

