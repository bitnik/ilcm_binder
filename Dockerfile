From ckahmann/ilcm_binder_basis:0.97
USER root

COPY docker-entrypoint.sh /
COPY expectfile.sh /
COPY start_services.sh /

RUN rm /home/ilcm/index.ipynb install_libraries.R LICENSE Readme.md runtime.txt
RUN rm -r /home/ilcm/bus-dashboard

RUN chmod -R 777 /home/ilcm/
RUN chmod 777 /docker-entrypoint.sh
RUN chmod 777 /start_services.sh
RUN chmod 777 /expectfile.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

USER ilcm
