From ckahmann/testbinder2:latest
USER root


COPY docker-entrypoint.sh /
Copy expectfile.sh /home/christian/expectfile.sh
Copy start_services.sh /home/christian/start_services.sh
Run chmod -R 777 /home/christian/
RUN echo "christian:christian" | chpasswd && adduser christian sudo
#RUN apt-get install -y supervisor
#RUN mkdir -p /var/log/supervisor
#COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#CMD ["echo","das ist der neue cmd"]
RUN chmod 777 /docker-entrypoint.sh
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
RUN apt-get install -y expect 
#RUN echo "christian  ALL=(ALL:ALL) ALL" >> /etc/sudoers
RUN whoami
USER christian
#RUN /usr/bin/mysqld_safe --basedir=/usr & sleep 5s \ 
#  && su christian
