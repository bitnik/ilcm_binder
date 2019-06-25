From ckahmann/testbinder2:latest
USER root
COPY docker-entrypoint.sh /
Run chmod -R 777 /home/christian/
RUN echo "christian:christian" | chpasswd && adduser christian sudo
RUN echo "hallo hallo"
#CMD ["echo","das ist der neue cmd"]
#ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
RUN echo "christion  ALL=(ALL:ALL) ALL" >> /etc/sudoers
USER christian 
