From ckahmann/ilcm_binder_basis:0.97
USER root

COPY start_script.sh /
COPY docker-entrypoint.sh /
COPY expectfile.sh /
COPY start_services.sh /

Run chmod -R 777 /home/ilcm/
RUN chmod 777 /docker-entrypoint.sh
RUN chmod 777 /start_script.sh
RUN chmod 777 /expectfile.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

USER ilcm
