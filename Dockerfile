From ckahmann/testbinder2:latest
USER root



RUN echo "christian:christian" | chpasswd && adduser christian sudo


RUN apt-get install -y expect 
COPY start_script.sh /home/christian/start_script.sh
COPY docker-entrypoint.sh /
COPY expectfile.sh /home/christian/expectfile.sh
COPY start_services.sh /home/christian/start_services.sh
Run chmod -R 777 /home/christian/
RUN chmod 777 /docker-entrypoint.sh
ENTRYPOINT ["sh","/docker-entrypoint.sh"]
#CMD ["sh", "/home/christian/start_script.sh"]

USER christian
