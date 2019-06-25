From ckahmann/binder_ilcm2:0.97
USER root
COPY docker-entrypoint.sh /
Run chmod -R 777 /home/christian/
RUN echo "christian:christian" | chpasswd && adduser christian sudo
CMD ["echo","das ist der neue cmd"]
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]

USER christian
