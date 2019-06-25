From ckahmann/testbinder2:latest
USER root


COPY docker-entrypoint.sh /
Copy expectfile.sh /home/christian/expectfile.sh
RUN chmod 774 /home/christianexpectfile.sh
Run chmod -R 777 /home/christian/
RUN echo "christian:christian" | chpasswd && adduser christian sudo
#RUN apt-get install -y supervisor
#RUN mkdir -p /var/log/supervisor
#COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
#CMD ["echo","das ist der neue cmd"]
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
RUN apt-get install -y expect 
#RUN echo "christian  ALL=(ALL:ALL) ALL" >> /etc/sudoers
USER christian
#RUN /usr/bin/mysqld_safe --basedir=/usr & sleep 5s \ 
#  && su christian
