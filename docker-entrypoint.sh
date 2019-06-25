#!/bin/bash
set -e
echo "im entrypoint skript"
touch /home/christian/testdatei.txt
#su - solr -c "/opt/solr/bin/solr start -m 2g"
#[ -d /var/solr/data/ ] && su - solr -c "/opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM"
#echo christian | sudo -S /usr/bin/mysqld_safe --basedir=/usr & sleep 5s
/home/christian/expectfile.sh docker
echo "database started"
#echo christian | sudo -S su - solr -c "/opt/solr/bin/solr start -m 2g"
#echo christian | sudo -S su - solr -c "/opt/solr/bin/solr create_core -c iLCM -p 8983 -d /store/solr/config/iLCM"

echo "solr started"
#su christian
#/usr/bin/supervisord

exec "$@"
	
