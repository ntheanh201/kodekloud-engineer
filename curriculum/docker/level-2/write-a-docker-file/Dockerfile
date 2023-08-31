FROM ubuntu

RUN apt-get update

RUN apt-get install apache2 -y

ADD ports.conf /etc/apache2/ports.conf

ADD conf.conf /etc/apache2/sites-enabled/000-default.conf

EXPOSE 5000

CMD ["apache2ctl", "-D", "FOREGROUND"]