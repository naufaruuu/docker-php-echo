FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y apache2 supervisor php8.1 \
    && apt-get -y autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/apache2/mods-enabled/dir.conf
COPY index.php /var/www/html/
EXPOSE 80
CMD [ "/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf" ]
