From ckahmann/testbinder2:latest
USER root

ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

COPY docker-entrypoint.sh /
Run chmod -R 777 /home/christian/
RUN echo "christian:christian" | chpasswd && adduser christian sudo
RUN echo "hallo hallo"
#CMD ["echo","das ist der neue cmd"]
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
#RUN echo "christian  ALL=(ALL:ALL) ALL" >> /etc/sudoers
USER christian
#RUN /usr/bin/mysqld_safe --basedir=/usr & sleep 5s \ 
#  && su christian
